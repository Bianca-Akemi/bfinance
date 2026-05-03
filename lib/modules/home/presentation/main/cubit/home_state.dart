part of 'home_cubit.dart';

const _currencyZero = Currency(value: 0);

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default([]) List<SalesData> lastSevenDaysExpense,
    @Default([]) List<SalesData> lastSevenDaysIncome,
    @Default(false) bool lastSevenDaysExpenseEmpty,
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
    @Default('') String userName,
    Uint8List? userPhotoBytes,
  }) = _Initial;
}
