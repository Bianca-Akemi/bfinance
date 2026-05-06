import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/modules/modules.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  double sales;
}

class PieByCategory {
  PieByCategory(this.categoryType, this.value);

  final CategoryType categoryType;
  final double value;
}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required this.getTransactionsPeriodUseCase,
    required this.getUserBankAccountsUseCase,
    required this.doGetUserInfoUseCase,
    required this.getProfilePhotoUseCase,
  }) : super(const HomeState.initial()) {
    loadInfos();
  }

  final GetTransactionsPeriodUseCase getTransactionsPeriodUseCase;
  final GetUserBankAccountsUseCase getUserBankAccountsUseCase;
  final DoGetUserInfoUseCase doGetUserInfoUseCase;
  final GetProfilePhotoUseCase getProfilePhotoUseCase;

  Future<void> loadInfos() async {
    final date = DateTime.now();
    emit(state.copyWith(month: date.month, year: date.year));

    await _loadUserInfo();
    await _loadChartData();
    await _loadTransactionsMonth();
    await _loadAllAccounts();
  }

  Future<void> _loadUserInfo() async {
    try {
      final user = await doGetUserInfoUseCase();
      final photoBytes = await getProfilePhotoUseCase();
      emit(
        state.copyWith(userName: user.name, userPhotoBytes: photoBytes),
      );
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    }
  }

  void changeChartViewMode(ChartViewMode mode) {
    emit(state.copyWith(chartViewMode: mode));
    _loadChartData();
  }

  Future<void> _loadChartData() async {
    try {
      emit(state.copyWith(isChartLoading: true));

      switch (state.chartViewMode) {
        case ChartViewMode.daily:
          await _loadDailyChart();
        case ChartViewMode.weekly:
          await _loadWeeklyChart();
        case ChartViewMode.monthly:
          await _loadMonthlyChart();
      }
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    } finally {
      emit(state.copyWith(isChartLoading: false));
    }
  }

  Future<void> _loadDailyChart() async {
    final inputFormatter = DateFormat('EEE', 'pt_BR');
    final dayFormatter = DateFormat('dd/MM');
    final expenseDays = <SalesData>[];
    final incomeDays = <SalesData>[];

    final now = DateTime.now();
    // Início da semana (segunda-feira)
    final weekday = now.weekday; // 1=seg, 7=dom
    final startOfWeek = DateTime(now.year, now.month, now.day)
        .subtract(Duration(days: weekday - 1));

    for (var i = 0; i < 7; i++) {
      final date = startOfWeek.add(Duration(days: i));
      final label =
          '${inputFormatter.format(date)}\n${dayFormatter.format(date)}';
      expenseDays.add(SalesData(label, 0));
      incomeDays.add(SalesData(label, 0));
    }

    final endOfWeek = startOfWeek.add(
      const Duration(days: 6, hours: 23, minutes: 59, seconds: 59),
    );

    final result = await getTransactionsPeriodUseCase(
      start: startOfWeek,
      end: endOfWeek,
    );

    final expenses =
        result.where((e) => e.type == TransactionType.expense);
    final incomes =
        result.where((e) => e.type == TransactionType.income);

    for (final e in expenses) {
      final index = e.date.weekday - 1; // 0=seg, 6=dom
      if (index >= 0 && index < expenseDays.length) {
        expenseDays[index].sales += e.value.value;
      }
    }

    for (final e in incomes) {
      final index = e.date.weekday - 1;
      if (index >= 0 && index < incomeDays.length) {
        incomeDays[index].sales += e.value.value;
      }
    }

    _emitChartState(expenseDays: expenseDays, incomeDays: incomeDays);
  }

  Future<void> _loadWeeklyChart() async {
    final expenseDays = <SalesData>[];
    final incomeDays = <SalesData>[];

    final start = DateHelper.firstDayMonth(state.year, state.month);
    final end = DateHelper.lastDayMonth(state.year, state.month);

    // Agrupar por semanas do mês
    final weeks = <_WeekRange>[];
    var weekStart = start;
    var weekNumber = 1;

    while (weekStart.isBefore(end) || weekStart.isAtSameMomentAs(end)) {
      // Fim da semana = próximo domingo ou último dia do mês
      var weekEnd = weekStart.add(Duration(days: 6 - (weekStart.weekday - 1)));
      if (weekEnd.isAfter(end)) {
        weekEnd = end;
      }

      final label = 'Sem $weekNumber';
      weeks.add(_WeekRange(start: weekStart, end: weekEnd, label: label));
      expenseDays.add(SalesData(label, 0));
      incomeDays.add(SalesData(label, 0));

      weekStart = weekEnd.add(const Duration(days: 1));
      weekStart = DateTime(weekStart.year, weekStart.month, weekStart.day);
      weekNumber++;
    }

    final result = await getTransactionsPeriodUseCase(
      start: start,
      end: end,
    );

    final expenses =
        result.where((e) => e.type == TransactionType.expense);
    final incomes =
        result.where((e) => e.type == TransactionType.income);

    for (final e in expenses) {
      for (var i = 0; i < weeks.length; i++) {
        final week = weeks[i];
        if (!e.date.isBefore(week.start) && !e.date.isAfter(week.end)) {
          expenseDays[i].sales += e.value.value;
          break;
        }
      }
    }

    for (final e in incomes) {
      for (var i = 0; i < weeks.length; i++) {
        final week = weeks[i];
        if (!e.date.isBefore(week.start) && !e.date.isAfter(week.end)) {
          incomeDays[i].sales += e.value.value;
          break;
        }
      }
    }

    _emitChartState(expenseDays: expenseDays, incomeDays: incomeDays);
  }

  Future<void> _loadMonthlyChart() async {
    final inputFormatter = DateFormat('MMM', 'pt_BR');
    final expenseDays = <SalesData>[];
    final incomeDays = <SalesData>[];

    // Todos os meses do ano selecionado
    for (var m = 1; m <= 12; m++) {
      final date = DateTime(state.year, m);
      final label = inputFormatter.format(date);
      expenseDays.add(SalesData(label, 0));
      incomeDays.add(SalesData(label, 0));
    }

    final start = DateTime(state.year);
    final end = DateTime(state.year, 12, 31, 23, 59, 59);

    final result = await getTransactionsPeriodUseCase(
      start: start,
      end: end,
    );

    final expenses =
        result.where((e) => e.type == TransactionType.expense);
    final incomes =
        result.where((e) => e.type == TransactionType.income);

    for (final e in expenses) {
      expenseDays[e.date.month - 1].sales += e.value.value;
    }

    for (final e in incomes) {
      incomeDays[e.date.month - 1].sales += e.value.value;
    }

    _emitChartState(expenseDays: expenseDays, incomeDays: incomeDays);
  }

  void _emitChartState({
    required List<SalesData> expenseDays,
    required List<SalesData> incomeDays,
  }) {
    final hasExpense = expenseDays.any((e) => e.sales > 0);
    final hasIncome = incomeDays.any((e) => e.sales > 0);
    final chartDataEmpty = !hasExpense && !hasIncome;

    emit(
      state.copyWith(
        chartExpenseData: expenseDays,
        chartIncomeData: incomeDays,
        chartDataEmpty: chartDataEmpty,
      ),
    );
  }

  Future<void> _loadTransactionsMonth() async {
    try {
      emit(state.copyWith(isLoading: true));

      final start = DateHelper.firstDayMonth(state.year, state.month);
      final end = DateHelper.lastDayMonth(state.year, state.month);

      final result = await getTransactionsPeriodUseCase(
        start: start,
        end: end,
      );

      final expenses =
          result.where((e) => e.type == TransactionType.expense).toList();
      final incomes =
          result.where((e) => e.type == TransactionType.income).toList();

      final groupByCategory = groupBy(expenses, (e) => e.category);

      final categoriesDataSource = <PieByCategory>[];

      groupByCategory.forEach((category, transactions) {
        final double total = transactions.fold(
          0,
          (prev, transaction) => prev + transaction.value.value,
        );

        categoriesDataSource.add(PieByCategory(category, total));
      });

      double totalExpense = 0;
      expenses.forEach((e) {
        totalExpense += e.value.value;
      });

      double totalIncome = 0;
      incomes.forEach((e) {
        totalIncome += e.value.value;
      });

      double balance = totalIncome - totalExpense;
      double economyPercent =
          totalIncome > 0 ? (balance / totalIncome) * 100 : 0.0;
      bool spendingTooMuch = economyPercent < 20.00;

      emit(
        state.copyWith(
          categoriesDataSource: categoriesDataSource,
          balance: Currency(value: balance),
          totalExpense: Currency(value: totalExpense),
          totalIncome: Currency(value: totalIncome),
          economyPercent: economyPercent,
          spendingTooMuch: spendingTooMuch,
        ),
      );
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _loadAllAccounts() async {
    try {
      emit(state.copyWith(isLoading: true));
      final result = await getUserBankAccountsUseCase();

      double balanceInAccounts = 0;
      result.forEach((e) {
        balanceInAccounts += e.balance.value;
      });

      emit(
        state.copyWith(balanceInAccounts: Currency(value: balanceInAccounts)),
      );
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void nextMonth() {
    if (state.month == 12) {
      emit(state.copyWith(year: state.year + 1, month: 1));
    } else {
      emit(state.copyWith(month: state.month + 1));
    }
    _loadTransactionsMonth();
    _loadChartData();
  }

  void previousMonth() {
    if (state.month == 1) {
      emit(state.copyWith(year: state.year - 1, month: 12));
    } else {
      emit(state.copyWith(month: state.month - 1));
    }
    _loadTransactionsMonth();
    _loadChartData();
  }
}

class _WeekRange {
  _WeekRange({required this.start, required this.end, required this.label});

  final DateTime start;
  final DateTime end;
  final String label;
}
