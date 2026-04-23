import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:s_mobills/core/helpers/typedefs.dart';

part 'bank_account_response.freezed.dart';
part 'bank_account_response.g.dart';

@freezed
abstract class BankAccountResponse with _$BankAccountResponse {
  factory BankAccountResponse({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Balance') required double balance,
    @JsonKey(name: 'UserId') required int userId,
  }) = _BankAccountResponse;

  BankAccountResponse._();

  factory BankAccountResponse.fromJson(JSON json) =>
      _$BankAccountResponseFromJson(json);
}
