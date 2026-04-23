// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 List<SalesData> get lastSevenDaysExpense; bool get lastSevenDaysExpenseEmpty; List<PieByCategory> get categoriesDataSource; Currency get totalExpense; Currency get totalIncome; Currency get balance; Currency get balanceInAccounts; double get economyPercent; bool get spendingTooMuch; int get year; int get month; bool get isLoading;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.lastSevenDaysExpense, lastSevenDaysExpense)&&(identical(other.lastSevenDaysExpenseEmpty, lastSevenDaysExpenseEmpty) || other.lastSevenDaysExpenseEmpty == lastSevenDaysExpenseEmpty)&&const DeepCollectionEquality().equals(other.categoriesDataSource, categoriesDataSource)&&(identical(other.totalExpense, totalExpense) || other.totalExpense == totalExpense)&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.balanceInAccounts, balanceInAccounts) || other.balanceInAccounts == balanceInAccounts)&&(identical(other.economyPercent, economyPercent) || other.economyPercent == economyPercent)&&(identical(other.spendingTooMuch, spendingTooMuch) || other.spendingTooMuch == spendingTooMuch)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lastSevenDaysExpense),lastSevenDaysExpenseEmpty,const DeepCollectionEquality().hash(categoriesDataSource),totalExpense,totalIncome,balance,balanceInAccounts,economyPercent,spendingTooMuch,year,month,isLoading);

@override
String toString() {
  return 'HomeState(lastSevenDaysExpense: $lastSevenDaysExpense, lastSevenDaysExpenseEmpty: $lastSevenDaysExpenseEmpty, categoriesDataSource: $categoriesDataSource, totalExpense: $totalExpense, totalIncome: $totalIncome, balance: $balance, balanceInAccounts: $balanceInAccounts, economyPercent: $economyPercent, spendingTooMuch: $spendingTooMuch, year: $year, month: $month, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<SalesData> lastSevenDaysExpense, bool lastSevenDaysExpenseEmpty, List<PieByCategory> categoriesDataSource, Currency totalExpense, Currency totalIncome, Currency balance, Currency balanceInAccounts, double economyPercent, bool spendingTooMuch, int year, int month, bool isLoading
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lastSevenDaysExpense = null,Object? lastSevenDaysExpenseEmpty = null,Object? categoriesDataSource = null,Object? totalExpense = null,Object? totalIncome = null,Object? balance = null,Object? balanceInAccounts = null,Object? economyPercent = null,Object? spendingTooMuch = null,Object? year = null,Object? month = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
lastSevenDaysExpense: null == lastSevenDaysExpense ? _self.lastSevenDaysExpense : lastSevenDaysExpense // ignore: cast_nullable_to_non_nullable
as List<SalesData>,lastSevenDaysExpenseEmpty: null == lastSevenDaysExpenseEmpty ? _self.lastSevenDaysExpenseEmpty : lastSevenDaysExpenseEmpty // ignore: cast_nullable_to_non_nullable
as bool,categoriesDataSource: null == categoriesDataSource ? _self.categoriesDataSource : categoriesDataSource // ignore: cast_nullable_to_non_nullable
as List<PieByCategory>,totalExpense: null == totalExpense ? _self.totalExpense : totalExpense // ignore: cast_nullable_to_non_nullable
as Currency,totalIncome: null == totalIncome ? _self.totalIncome : totalIncome // ignore: cast_nullable_to_non_nullable
as Currency,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Currency,balanceInAccounts: null == balanceInAccounts ? _self.balanceInAccounts : balanceInAccounts // ignore: cast_nullable_to_non_nullable
as Currency,economyPercent: null == economyPercent ? _self.economyPercent : economyPercent // ignore: cast_nullable_to_non_nullable
as double,spendingTooMuch: null == spendingTooMuch ? _self.spendingTooMuch : spendingTooMuch // ignore: cast_nullable_to_non_nullable
as bool,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<SalesData> lastSevenDaysExpense,  bool lastSevenDaysExpenseEmpty,  List<PieByCategory> categoriesDataSource,  Currency totalExpense,  Currency totalIncome,  Currency balance,  Currency balanceInAccounts,  double economyPercent,  bool spendingTooMuch,  int year,  int month,  bool isLoading)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.lastSevenDaysExpense,_that.lastSevenDaysExpenseEmpty,_that.categoriesDataSource,_that.totalExpense,_that.totalIncome,_that.balance,_that.balanceInAccounts,_that.economyPercent,_that.spendingTooMuch,_that.year,_that.month,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<SalesData> lastSevenDaysExpense,  bool lastSevenDaysExpenseEmpty,  List<PieByCategory> categoriesDataSource,  Currency totalExpense,  Currency totalIncome,  Currency balance,  Currency balanceInAccounts,  double economyPercent,  bool spendingTooMuch,  int year,  int month,  bool isLoading)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.lastSevenDaysExpense,_that.lastSevenDaysExpenseEmpty,_that.categoriesDataSource,_that.totalExpense,_that.totalIncome,_that.balance,_that.balanceInAccounts,_that.economyPercent,_that.spendingTooMuch,_that.year,_that.month,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<SalesData> lastSevenDaysExpense,  bool lastSevenDaysExpenseEmpty,  List<PieByCategory> categoriesDataSource,  Currency totalExpense,  Currency totalIncome,  Currency balance,  Currency balanceInAccounts,  double economyPercent,  bool spendingTooMuch,  int year,  int month,  bool isLoading)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.lastSevenDaysExpense,_that.lastSevenDaysExpenseEmpty,_that.categoriesDataSource,_that.totalExpense,_that.totalIncome,_that.balance,_that.balanceInAccounts,_that.economyPercent,_that.spendingTooMuch,_that.year,_that.month,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial({final  List<SalesData> lastSevenDaysExpense = const [], this.lastSevenDaysExpenseEmpty = false, final  List<PieByCategory> categoriesDataSource = const [], this.totalExpense = _currencyZero, this.totalIncome = _currencyZero, this.balance = _currencyZero, this.balanceInAccounts = _currencyZero, this.economyPercent = 0.00, this.spendingTooMuch = false, this.year = 0, this.month = 0, this.isLoading = false}): _lastSevenDaysExpense = lastSevenDaysExpense,_categoriesDataSource = categoriesDataSource;
  

 final  List<SalesData> _lastSevenDaysExpense;
@override@JsonKey() List<SalesData> get lastSevenDaysExpense {
  if (_lastSevenDaysExpense is EqualUnmodifiableListView) return _lastSevenDaysExpense;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lastSevenDaysExpense);
}

@override@JsonKey() final  bool lastSevenDaysExpenseEmpty;
 final  List<PieByCategory> _categoriesDataSource;
@override@JsonKey() List<PieByCategory> get categoriesDataSource {
  if (_categoriesDataSource is EqualUnmodifiableListView) return _categoriesDataSource;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoriesDataSource);
}

@override@JsonKey() final  Currency totalExpense;
@override@JsonKey() final  Currency totalIncome;
@override@JsonKey() final  Currency balance;
@override@JsonKey() final  Currency balanceInAccounts;
@override@JsonKey() final  double economyPercent;
@override@JsonKey() final  bool spendingTooMuch;
@override@JsonKey() final  int year;
@override@JsonKey() final  int month;
@override@JsonKey() final  bool isLoading;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._lastSevenDaysExpense, _lastSevenDaysExpense)&&(identical(other.lastSevenDaysExpenseEmpty, lastSevenDaysExpenseEmpty) || other.lastSevenDaysExpenseEmpty == lastSevenDaysExpenseEmpty)&&const DeepCollectionEquality().equals(other._categoriesDataSource, _categoriesDataSource)&&(identical(other.totalExpense, totalExpense) || other.totalExpense == totalExpense)&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.balanceInAccounts, balanceInAccounts) || other.balanceInAccounts == balanceInAccounts)&&(identical(other.economyPercent, economyPercent) || other.economyPercent == economyPercent)&&(identical(other.spendingTooMuch, spendingTooMuch) || other.spendingTooMuch == spendingTooMuch)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lastSevenDaysExpense),lastSevenDaysExpenseEmpty,const DeepCollectionEquality().hash(_categoriesDataSource),totalExpense,totalIncome,balance,balanceInAccounts,economyPercent,spendingTooMuch,year,month,isLoading);

@override
String toString() {
  return 'HomeState.initial(lastSevenDaysExpense: $lastSevenDaysExpense, lastSevenDaysExpenseEmpty: $lastSevenDaysExpenseEmpty, categoriesDataSource: $categoriesDataSource, totalExpense: $totalExpense, totalIncome: $totalIncome, balance: $balance, balanceInAccounts: $balanceInAccounts, economyPercent: $economyPercent, spendingTooMuch: $spendingTooMuch, year: $year, month: $month, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<SalesData> lastSevenDaysExpense, bool lastSevenDaysExpenseEmpty, List<PieByCategory> categoriesDataSource, Currency totalExpense, Currency totalIncome, Currency balance, Currency balanceInAccounts, double economyPercent, bool spendingTooMuch, int year, int month, bool isLoading
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lastSevenDaysExpense = null,Object? lastSevenDaysExpenseEmpty = null,Object? categoriesDataSource = null,Object? totalExpense = null,Object? totalIncome = null,Object? balance = null,Object? balanceInAccounts = null,Object? economyPercent = null,Object? spendingTooMuch = null,Object? year = null,Object? month = null,Object? isLoading = null,}) {
  return _then(_Initial(
lastSevenDaysExpense: null == lastSevenDaysExpense ? _self._lastSevenDaysExpense : lastSevenDaysExpense // ignore: cast_nullable_to_non_nullable
as List<SalesData>,lastSevenDaysExpenseEmpty: null == lastSevenDaysExpenseEmpty ? _self.lastSevenDaysExpenseEmpty : lastSevenDaysExpenseEmpty // ignore: cast_nullable_to_non_nullable
as bool,categoriesDataSource: null == categoriesDataSource ? _self._categoriesDataSource : categoriesDataSource // ignore: cast_nullable_to_non_nullable
as List<PieByCategory>,totalExpense: null == totalExpense ? _self.totalExpense : totalExpense // ignore: cast_nullable_to_non_nullable
as Currency,totalIncome: null == totalIncome ? _self.totalIncome : totalIncome // ignore: cast_nullable_to_non_nullable
as Currency,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Currency,balanceInAccounts: null == balanceInAccounts ? _self.balanceInAccounts : balanceInAccounts // ignore: cast_nullable_to_non_nullable
as Currency,economyPercent: null == economyPercent ? _self.economyPercent : economyPercent // ignore: cast_nullable_to_non_nullable
as double,spendingTooMuch: null == spendingTooMuch ? _self.spendingTooMuch : spendingTooMuch // ignore: cast_nullable_to_non_nullable
as bool,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
