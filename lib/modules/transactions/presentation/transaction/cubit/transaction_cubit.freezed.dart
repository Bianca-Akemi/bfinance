// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionState {

 double get transactionValue; String get description; bool get done; bool get showAllDateOptions; bool get isLoading; TransactionType get transactionType; CategoryType get categoryType; int get bankAccountId; String get bankAccountName; int get transactionId; int get referenceYear; int get referenceMonth; DateTime? get selectedDate;
/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStateCopyWith<TransactionState> get copyWith => _$TransactionStateCopyWithImpl<TransactionState>(this as TransactionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionState&&(identical(other.transactionValue, transactionValue) || other.transactionValue == transactionValue)&&(identical(other.description, description) || other.description == description)&&(identical(other.done, done) || other.done == done)&&(identical(other.showAllDateOptions, showAllDateOptions) || other.showAllDateOptions == showAllDateOptions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.categoryType, categoryType) || other.categoryType == categoryType)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.bankAccountName, bankAccountName) || other.bankAccountName == bankAccountName)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.referenceYear, referenceYear) || other.referenceYear == referenceYear)&&(identical(other.referenceMonth, referenceMonth) || other.referenceMonth == referenceMonth)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}


@override
int get hashCode => Object.hash(runtimeType,transactionValue,description,done,showAllDateOptions,isLoading,transactionType,categoryType,bankAccountId,bankAccountName,transactionId,referenceYear,referenceMonth,selectedDate);

@override
String toString() {
  return 'TransactionState(transactionValue: $transactionValue, description: $description, done: $done, showAllDateOptions: $showAllDateOptions, isLoading: $isLoading, transactionType: $transactionType, categoryType: $categoryType, bankAccountId: $bankAccountId, bankAccountName: $bankAccountName, transactionId: $transactionId, referenceYear: $referenceYear, referenceMonth: $referenceMonth, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class $TransactionStateCopyWith<$Res>  {
  factory $TransactionStateCopyWith(TransactionState value, $Res Function(TransactionState) _then) = _$TransactionStateCopyWithImpl;
@useResult
$Res call({
 double transactionValue, String description, bool done, bool showAllDateOptions, bool isLoading, TransactionType transactionType, CategoryType categoryType, int bankAccountId, String bankAccountName, int transactionId, int referenceYear, int referenceMonth, DateTime? selectedDate
});




}
/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._self, this._then);

  final TransactionState _self;
  final $Res Function(TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionValue = null,Object? description = null,Object? done = null,Object? showAllDateOptions = null,Object? isLoading = null,Object? transactionType = null,Object? categoryType = null,Object? bankAccountId = null,Object? bankAccountName = null,Object? transactionId = null,Object? referenceYear = null,Object? referenceMonth = null,Object? selectedDate = freezed,}) {
  return _then(_self.copyWith(
transactionValue: null == transactionValue ? _self.transactionValue : transactionValue // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as bool,showAllDateOptions: null == showAllDateOptions ? _self.showAllDateOptions : showAllDateOptions // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as TransactionType,categoryType: null == categoryType ? _self.categoryType : categoryType // ignore: cast_nullable_to_non_nullable
as CategoryType,bankAccountId: null == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int,bankAccountName: null == bankAccountName ? _self.bankAccountName : bankAccountName // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,referenceYear: null == referenceYear ? _self.referenceYear : referenceYear // ignore: cast_nullable_to_non_nullable
as int,referenceMonth: null == referenceMonth ? _self.referenceMonth : referenceMonth // ignore: cast_nullable_to_non_nullable
as int,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionState].
extension TransactionStatePatterns on TransactionState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double transactionValue,  String description,  bool done,  bool showAllDateOptions,  bool isLoading,  TransactionType transactionType,  CategoryType categoryType,  int bankAccountId,  String bankAccountName,  int transactionId,  int referenceYear,  int referenceMonth,  DateTime? selectedDate)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.transactionValue,_that.description,_that.done,_that.showAllDateOptions,_that.isLoading,_that.transactionType,_that.categoryType,_that.bankAccountId,_that.bankAccountName,_that.transactionId,_that.referenceYear,_that.referenceMonth,_that.selectedDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double transactionValue,  String description,  bool done,  bool showAllDateOptions,  bool isLoading,  TransactionType transactionType,  CategoryType categoryType,  int bankAccountId,  String bankAccountName,  int transactionId,  int referenceYear,  int referenceMonth,  DateTime? selectedDate)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.transactionValue,_that.description,_that.done,_that.showAllDateOptions,_that.isLoading,_that.transactionType,_that.categoryType,_that.bankAccountId,_that.bankAccountName,_that.transactionId,_that.referenceYear,_that.referenceMonth,_that.selectedDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double transactionValue,  String description,  bool done,  bool showAllDateOptions,  bool isLoading,  TransactionType transactionType,  CategoryType categoryType,  int bankAccountId,  String bankAccountName,  int transactionId,  int referenceYear,  int referenceMonth,  DateTime? selectedDate)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.transactionValue,_that.description,_that.done,_that.showAllDateOptions,_that.isLoading,_that.transactionType,_that.categoryType,_that.bankAccountId,_that.bankAccountName,_that.transactionId,_that.referenceYear,_that.referenceMonth,_that.selectedDate);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TransactionState {
  const _Initial({this.transactionValue = 0.0, this.description = '', this.done = false, this.showAllDateOptions = true, this.isLoading = false, this.transactionType = TransactionType.income, this.categoryType = CategoryType.food, this.bankAccountId = -1, this.bankAccountName = 'Selecione a conta', this.transactionId = -1, this.referenceYear = 0, this.referenceMonth = 0, this.selectedDate});
  

@override@JsonKey() final  double transactionValue;
@override@JsonKey() final  String description;
@override@JsonKey() final  bool done;
@override@JsonKey() final  bool showAllDateOptions;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  TransactionType transactionType;
@override@JsonKey() final  CategoryType categoryType;
@override@JsonKey() final  int bankAccountId;
@override@JsonKey() final  String bankAccountName;
@override@JsonKey() final  int transactionId;
@override@JsonKey() final  int referenceYear;
@override@JsonKey() final  int referenceMonth;
@override final  DateTime? selectedDate;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.transactionValue, transactionValue) || other.transactionValue == transactionValue)&&(identical(other.description, description) || other.description == description)&&(identical(other.done, done) || other.done == done)&&(identical(other.showAllDateOptions, showAllDateOptions) || other.showAllDateOptions == showAllDateOptions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.categoryType, categoryType) || other.categoryType == categoryType)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.bankAccountName, bankAccountName) || other.bankAccountName == bankAccountName)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.referenceYear, referenceYear) || other.referenceYear == referenceYear)&&(identical(other.referenceMonth, referenceMonth) || other.referenceMonth == referenceMonth)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}


@override
int get hashCode => Object.hash(runtimeType,transactionValue,description,done,showAllDateOptions,isLoading,transactionType,categoryType,bankAccountId,bankAccountName,transactionId,referenceYear,referenceMonth,selectedDate);

@override
String toString() {
  return 'TransactionState.initial(transactionValue: $transactionValue, description: $description, done: $done, showAllDateOptions: $showAllDateOptions, isLoading: $isLoading, transactionType: $transactionType, categoryType: $categoryType, bankAccountId: $bankAccountId, bankAccountName: $bankAccountName, transactionId: $transactionId, referenceYear: $referenceYear, referenceMonth: $referenceMonth, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 double transactionValue, String description, bool done, bool showAllDateOptions, bool isLoading, TransactionType transactionType, CategoryType categoryType, int bankAccountId, String bankAccountName, int transactionId, int referenceYear, int referenceMonth, DateTime? selectedDate
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionValue = null,Object? description = null,Object? done = null,Object? showAllDateOptions = null,Object? isLoading = null,Object? transactionType = null,Object? categoryType = null,Object? bankAccountId = null,Object? bankAccountName = null,Object? transactionId = null,Object? referenceYear = null,Object? referenceMonth = null,Object? selectedDate = freezed,}) {
  return _then(_Initial(
transactionValue: null == transactionValue ? _self.transactionValue : transactionValue // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as bool,showAllDateOptions: null == showAllDateOptions ? _self.showAllDateOptions : showAllDateOptions // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as TransactionType,categoryType: null == categoryType ? _self.categoryType : categoryType // ignore: cast_nullable_to_non_nullable
as CategoryType,bankAccountId: null == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int,bankAccountName: null == bankAccountName ? _self.bankAccountName : bankAccountName // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,referenceYear: null == referenceYear ? _self.referenceYear : referenceYear // ignore: cast_nullable_to_non_nullable
as int,referenceMonth: null == referenceMonth ? _self.referenceMonth : referenceMonth // ignore: cast_nullable_to_non_nullable
as int,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
