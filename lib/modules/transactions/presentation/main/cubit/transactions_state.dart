part of 'transactions_cubit.dart';

@freezed
abstract class TransactionsState with _$TransactionsState {
  const factory TransactionsState.initial({
    @Default(false) bool isLoading,
    @Default(0) int year,
    @Default(0) int month,
    @Default([]) List<Transaction> transactions,
    DateTime? filterStartDate,
    DateTime? filterEndDate,
    TransactionType? filterType,
  }) = _Initial;
}
