import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/modules/transactions/module.dart';

class Transaction {
  const Transaction({
    required this.id,
    required this.description,
    required this.value,
    required this.accountId,
    required this.date,
    required this.done,
    required this.type,
    required this.category,
    this.accountName = '',
  });

  factory Transaction.toDomain(TransactionResponse response) {
    return Transaction(
      id: response.id,
      description: response.description,
      value: Currency(value: response.value),
      accountId: response.accountId,
      date: response.date,
      done: response.done,
      type: response.type,
      category: response.category,
    );
  }

  factory Transaction.stateToDomain(TransactionState state) {
    return Transaction(
      id: state.transactionId,
      description: state.description,
      value: Currency(value: state.transactionValue),
      accountId: state.bankAccountId,
      date: state.selectedDate ?? DateTime.now(),
      done: state.done,
      type: state.transactionType,
      category: state.categoryType,
    );
  }

  final int id;
  final String description;
  final Currency value;
  final int accountId;
  final DateTime date;
  final bool done;
  final TransactionType type;
  final CategoryType category;
  final String accountName;

  Transaction copyWith({
    int? id,
    String? description,
    Currency? value,
    int? accountId,
    DateTime? date,
    bool? done,
    TransactionType? type,
    CategoryType? category,
    String? accountName,
  }) {
    return Transaction(
      id: id ?? this.id,
      description: description ?? this.description,
      value: value ?? this.value,
      accountId: accountId ?? this.accountId,
      date: date ?? this.date,
      done: done ?? this.done,
      type: type ?? this.type,
      category: category ?? this.category,
      accountName: accountName ?? this.accountName,
    );
  }
}
