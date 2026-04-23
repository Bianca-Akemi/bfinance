import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:s_mobills/core/core.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
abstract class TransactionResponse with _$TransactionResponse {
  factory TransactionResponse({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'Value') required double value,
    @JsonKey(name: 'AccountId') required int accountId,
    @JsonKey(name: 'Date') required DateTime date,
    @JsonKey(name: 'Done') required bool done,
    @JsonKey(name: 'Type') required TransactionType type,
    @JsonKey(name: 'Category') required CategoryType category,
  }) = _TransactionResponse;

  TransactionResponse._();

  factory TransactionResponse.fromJson(JSON json) =>
      _$TransactionResponseFromJson(json);
}
