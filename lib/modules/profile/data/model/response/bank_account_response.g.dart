// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankAccountResponse _$BankAccountResponseFromJson(Map<String, dynamic> json) =>
    _BankAccountResponse(
      id: (json['Id'] as num).toInt(),
      name: json['Name'] as String,
      balance: (json['Balance'] as num).toDouble(),
      userId: (json['UserId'] as num).toInt(),
    );

Map<String, dynamic> _$BankAccountResponseToJson(
  _BankAccountResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'Balance': instance.balance,
  'UserId': instance.userId,
};
