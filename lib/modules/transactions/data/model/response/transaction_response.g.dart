// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) =>
    _TransactionResponse(
      id: (json['Id'] as num).toInt(),
      description: json['Description'] as String,
      value: (json['Value'] as num).toDouble(),
      accountId: (json['AccountId'] as num).toInt(),
      date: DateTime.parse(json['Date'] as String),
      done: json['Done'] as bool,
      type: $enumDecode(_$TransactionTypeEnumMap, json['Type']),
      category: $enumDecode(
        _$CategoryTypeEnumMap,
        json['Category'],
        unknownValue: CategoryType.others,
      ),
    );

Map<String, dynamic> _$TransactionResponseToJson(
  _TransactionResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Description': instance.description,
  'Value': instance.value,
  'AccountId': instance.accountId,
  'Date': instance.date.toIso8601String(),
  'Done': instance.done,
  'Type': _$TransactionTypeEnumMap[instance.type]!,
  'Category': _$CategoryTypeEnumMap[instance.category]!,
};

const _$TransactionTypeEnumMap = {
  TransactionType.income: 'income',
  TransactionType.expense: 'expense',
};

const _$CategoryTypeEnumMap = {
  CategoryType.food: 'food',
  CategoryType.beautyAndPersonalCare: 'beautyAndPersonalCare',
  CategoryType.fashionAndClothing: 'fashionAndClothing',
  CategoryType.healthAndFitness: 'healthAndFitness',
  CategoryType.technology: 'technology',
  CategoryType.homeAndDecoration: 'homeAndDecoration',
  CategoryType.entertainment: 'entertainment',
  CategoryType.education: 'education',
  CategoryType.travel: 'travel',
  CategoryType.finance: 'finance',
  CategoryType.automobiles: 'automobiles',
  CategoryType.sports: 'sports',
  CategoryType.pets: 'pets',
  CategoryType.artsAndCulture: 'artsAndCulture',
  CategoryType.workAndCareer: 'workAndCareer',
  CategoryType.investments: 'investments',
  CategoryType.wage: 'wage',
  CategoryType.gift: 'gift',
  CategoryType.award: 'award',
  CategoryType.restitution: 'restitution',
  CategoryType.others: 'others',
};
