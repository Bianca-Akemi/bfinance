part of 'transaction_cubit.dart';

class TransactionDate {
  static final yesterdayDate = DateTime.now().subtract(const Duration(days: 1));
  static final todayDate = DateTime.now();
  static final initialDate = DateTime(2023);
  static final lastDate = DateTime(DateTime.now().year, DateTime.now().month + 1, 0);
}

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial({
    @Default(0.0) double transactionValue,
    @Default('') String description,
    @Default(false) bool done,
    @Default(true) bool showAllDateOptions,
    @Default(false) bool isLoading,
    @Default(TransactionType.income) TransactionType transactionType,
    @Default(CategoryType.food) CategoryType categoryType,
    @Default(-1) int bankAccountId,
    @Default('Selecione a conta') String bankAccountName,
    @Default(-1) int transactionId,
    @Default(0) int referenceYear,
    @Default(0) int referenceMonth,
    DateTime? selectedDate,
  }) = _Initial;
}
