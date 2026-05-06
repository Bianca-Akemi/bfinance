import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:s_mobills/core/helpers/date_helper.dart';
import 'package:s_mobills/modules/home/presentation/widgets/home_empty_state.dart';
import 'package:s_mobills/modules/home/presentation/widgets/home_header.dart';
import 'package:s_mobills/modules/home/presentation/widgets/month_balance.dart';
import 'package:s_mobills/modules/home/presentation/widgets/spending_bar_chart.dart';
import 'package:s_mobills/modules/home/presentation/widgets/spending_category.dart';
import 'package:s_mobills/modules/home/presentation/widgets/spending_frequency.dart';
import 'package:s_mobills/modules/modules.dart';
import 'package:s_mobills/ui/ui.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(
        getTransactionsPeriodUseCase: GetIt.I<GetTransactionsPeriodUseCase>(),
        getUserBankAccountsUseCase: GetIt.I<GetUserBankAccountsUseCase>(),
        doGetUserInfoUseCase: GetIt.I<DoGetUserInfoUseCase>(),
        getProfilePhotoUseCase: GetIt.I<GetProfilePhotoUseCase>(),
      ),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: SMobillsAppBar(
            title: state.userName,
            isHomePage: true,
            profilePhotoBytes: state.userPhotoBytes,
            customPreferredSize: const Size.fromHeight(150),
            bottom: TransactionAppBarBottom(
              month: state.month,
              year: state.year,
              onTapBack: context.read<HomeCubit>().previousMonth,
              onTapNext: context.read<HomeCubit>().nextMonth,
            ),
          ),
          body: SMobillsLoadingOverlay(
            isLoading: state.isLoading,
            child: Skeletonizer(
              enabled: state.isLoading,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      if (state.month == DateTime.now().month &&
                          state.year == DateTime.now().year)
                        HomeHeader(balance: state.balanceInAccounts.formatted),
                      MonthBalance(
                        totalIncome: state.totalIncome.formatted,
                        totalExpanse: state.totalExpense.formatted,
                        balance: state.balance.formatted,
                        balancePercent:
                            '${state.economyPercent.toStringAsFixed(2)}%',
                        spentTooMuch: state.spendingTooMuch,
                        hasIncome: state.totalIncome.value > 0,
                      ),
                      SMobillsSpacing.md,
                      state.categoriesDataSource.isEmpty
                          ? const HomeEmptyState()
                          : SpendingCategory(
                              categoriesDataSource: state.categoriesDataSource,
                              month: DateHelper.formatterMonthAndYearBy(
                                state.year,
                                state.month,
                              ),
                            ),
                      SMobillsSpacing.lg,
                      if (state.month == DateTime.now().month &&
                          state.year == DateTime.now().year) ...[
                        SpendingBarChart(
                          expenseDays: state.chartExpenseData,
                          incomeDays: state.chartIncomeData,
                          chartViewMode: state.chartViewMode,
                          isLoading: state.isChartLoading,
                          isEmpty: state.chartDataEmpty,
                          onViewModeChanged: context
                              .read<HomeCubit>()
                              .changeChartViewMode,
                        ),
                        if (!state.chartDataEmpty) ...[
                          SMobillsSpacing.lg,
                          SpendingFrequency(
                            days: state.chartExpenseData,
                            chartViewMode: state.chartViewMode,
                          ),
                        ],
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
