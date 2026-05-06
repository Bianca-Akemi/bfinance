import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/modules/modules.dart';

part 'transactions_state.dart';
part 'transactions_cubit.freezed.dart';

class TransactionsCubit extends Cubit<TransactionsState> {
  TransactionsCubit({
    required this.getTransactionsPeriodUseCase,
    required this.getUserBankAccountsUseCase,
  }) : super(const TransactionsState.initial()) {
    _loadTransactions();
  }

  final GetTransactionsPeriodUseCase getTransactionsPeriodUseCase;
  final GetUserBankAccountsUseCase getUserBankAccountsUseCase;

  final floatingButtonKey = GlobalKey<ExpandableFabState>();

  List<BankAccount> _accounts = [];

  Future<void> _loadTransactions() async {
    emit(
      state.copyWith(
        isLoading: true,
        year: DateTime.now().year,
        month: DateTime.now().month,
      ),
    );

    await _loadAccounts();
    await _getTransactions();
  }

  Future<void> _refreshTransactions() async {
    emit(state.copyWith(isLoading: true));
    await _loadAccounts();
    await _getTransactions();
  }

  Future<void> _loadAccounts() async {
    try {
      _accounts = await getUserBankAccountsUseCase();
    } on SMobillsException catch (_) {
      _accounts = [];
    }
  }

  String _accountNameById(int accountId) {
    for (final account in _accounts) {
      if (account.id == accountId) {
        return account.name;
      }
    }
    return '';
  }

  Future<void> _getTransactions() async {
    try {
      final start =
          DateHelper.firstDayMonth(state.year, state.month);
      final end =
          DateHelper.lastDayMonth(state.year, state.month);

      final result = await getTransactionsPeriodUseCase(
        start: start,
        end: end,
      );

      final enriched = result
          .map(
            (t) => t.copyWith(
              accountName: _accountNameById(t.accountId),
            ),
          )
          .toList();

      emit(state.copyWith(transactions: enriched));
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> addTransaction({required TransactionType type}) async {
    _floatingButtonToggle();
    await AppRouter.router.pushNamed(
      Routes.newTransaction.name,
      extra: {
        'type': type,
        'year': state.year,
        'month': state.month,
      },
    );

    await _refreshTransactions();
  }

  Future<void> editTransaction({required Transaction transaction}) async {
    await AppRouter.router.pushNamed(
      Routes.editTransaction.name,
      extra: transaction,
    );

    await _refreshTransactions();
  }

  void _floatingButtonToggle() {
    final state = floatingButtonKey.currentState;
    if (state != null) {
      debugPrint('isOpen:${state.isOpen}');
      state.toggle();
    }
  }

  void nextMonth() {
    if (state.month == 12) {
      emit(state.copyWith(year: state.year + 1, month: 1));
    } else {
      emit(state.copyWith(month: state.month + 1));
    }
    _getTransactions();
  }

  void previousMonth() {
    if (state.month == 1) {
      emit(state.copyWith(year: state.year - 1, month: 12));
    } else {
      emit(state.copyWith(month: state.month - 1));
    }
    _getTransactions();
  }

  void applyFilter({
    DateTime? startDate,
    DateTime? endDate,
    TransactionType? type,
  }) {
    emit(
      state.copyWith(
        filterStartDate: startDate,
        filterEndDate: endDate,
        filterType: type,
      ),
    );
  }

  void clearFilter() {
    emit(
      state.copyWith(
        filterStartDate: null,
        filterEndDate: null,
        filterType: null,
      ),
    );
  }

  bool get hasActiveFilter =>
      state.filterStartDate != null ||
      state.filterEndDate != null ||
      state.filterType != null;

  List<Transaction> get filteredTransactions {
    var result = state.transactions;

    if (state.filterType != null) {
      result = result.where((t) => t.type == state.filterType).toList();
    }

    if (state.filterStartDate != null) {
      result = result.where((t) {
        final txDate = DateTime(t.date.year, t.date.month, t.date.day);
        final start = DateTime(
          state.filterStartDate!.year,
          state.filterStartDate!.month,
          state.filterStartDate!.day,
        );
        return !txDate.isBefore(start);
      }).toList();
    }

    if (state.filterEndDate != null) {
      result = result.where((t) {
        final txDate = DateTime(t.date.year, t.date.month, t.date.day);
        final end = DateTime(
          state.filterEndDate!.year,
          state.filterEndDate!.month,
          state.filterEndDate!.day,
        );
        return !txDate.isAfter(end);
      }).toList();
    }

    return result;
  }
}
