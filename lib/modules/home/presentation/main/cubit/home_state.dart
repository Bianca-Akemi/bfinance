part of 'home_cubit.dart';

const _currencyZero = Currency(value: 0);

enum ChartViewMode { daily, weekly, monthly }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default([]) List<SalesData> chartExpenseData,
    @Default([]) List<SalesData> chartIncomeData,
    @Default(false) bool chartDataEmpty,
    @Default(ChartViewMode.daily) ChartViewMode chartViewMode,
    @Default([]) List<PieByCategory> categoriesDataSource,
    @Default(_currencyZero) Currency totalExpense,
    @Default(_currencyZero) Currency totalIncome,
    @Default(_currencyZero) Currency balance,
    @Default(_currencyZero) Currency balanceInAccounts,
    @Default(0.00) double economyPercent,
    @Default(false) bool spendingTooMuch,
    @Default(0) int year,
    @Default(0) int month,
    @Default(false) bool isLoading,
    @Default(false) bool isChartLoading,
    @Default('') String userName,
    Uint8List? userPhotoBytes,
  }) = _Initial;
}
