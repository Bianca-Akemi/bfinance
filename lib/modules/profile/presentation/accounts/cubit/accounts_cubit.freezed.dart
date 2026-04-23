// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountsState {

 bool get isLoading; bool get isNewTransaction; bool get isEmptyAccounts; List<BankAccount> get accounts;
/// Create a copy of AccountsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountsStateCopyWith<AccountsState> get copyWith => _$AccountsStateCopyWithImpl<AccountsState>(this as AccountsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isNewTransaction, isNewTransaction) || other.isNewTransaction == isNewTransaction)&&(identical(other.isEmptyAccounts, isEmptyAccounts) || other.isEmptyAccounts == isEmptyAccounts)&&const DeepCollectionEquality().equals(other.accounts, accounts));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isNewTransaction,isEmptyAccounts,const DeepCollectionEquality().hash(accounts));

@override
String toString() {
  return 'AccountsState(isLoading: $isLoading, isNewTransaction: $isNewTransaction, isEmptyAccounts: $isEmptyAccounts, accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class $AccountsStateCopyWith<$Res>  {
  factory $AccountsStateCopyWith(AccountsState value, $Res Function(AccountsState) _then) = _$AccountsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isNewTransaction, bool isEmptyAccounts, List<BankAccount> accounts
});




}
/// @nodoc
class _$AccountsStateCopyWithImpl<$Res>
    implements $AccountsStateCopyWith<$Res> {
  _$AccountsStateCopyWithImpl(this._self, this._then);

  final AccountsState _self;
  final $Res Function(AccountsState) _then;

/// Create a copy of AccountsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isNewTransaction = null,Object? isEmptyAccounts = null,Object? accounts = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isNewTransaction: null == isNewTransaction ? _self.isNewTransaction : isNewTransaction // ignore: cast_nullable_to_non_nullable
as bool,isEmptyAccounts: null == isEmptyAccounts ? _self.isEmptyAccounts : isEmptyAccounts // ignore: cast_nullable_to_non_nullable
as bool,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<BankAccount>,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountsState].
extension AccountsStatePatterns on AccountsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoading,  bool isNewTransaction,  bool isEmptyAccounts,  List<BankAccount> accounts)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isLoading,_that.isNewTransaction,_that.isEmptyAccounts,_that.accounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoading,  bool isNewTransaction,  bool isEmptyAccounts,  List<BankAccount> accounts)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.isLoading,_that.isNewTransaction,_that.isEmptyAccounts,_that.accounts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoading,  bool isNewTransaction,  bool isEmptyAccounts,  List<BankAccount> accounts)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isLoading,_that.isNewTransaction,_that.isEmptyAccounts,_that.accounts);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AccountsState {
  const _Initial({this.isLoading = false, this.isNewTransaction = false, this.isEmptyAccounts = false, final  List<BankAccount> accounts = const []}): _accounts = accounts;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isNewTransaction;
@override@JsonKey() final  bool isEmptyAccounts;
 final  List<BankAccount> _accounts;
@override@JsonKey() List<BankAccount> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}


/// Create a copy of AccountsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isNewTransaction, isNewTransaction) || other.isNewTransaction == isNewTransaction)&&(identical(other.isEmptyAccounts, isEmptyAccounts) || other.isEmptyAccounts == isEmptyAccounts)&&const DeepCollectionEquality().equals(other._accounts, _accounts));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isNewTransaction,isEmptyAccounts,const DeepCollectionEquality().hash(_accounts));

@override
String toString() {
  return 'AccountsState.initial(isLoading: $isLoading, isNewTransaction: $isNewTransaction, isEmptyAccounts: $isEmptyAccounts, accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $AccountsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isNewTransaction, bool isEmptyAccounts, List<BankAccount> accounts
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of AccountsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isNewTransaction = null,Object? isEmptyAccounts = null,Object? accounts = null,}) {
  return _then(_Initial(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isNewTransaction: null == isNewTransaction ? _self.isNewTransaction : isNewTransaction // ignore: cast_nullable_to_non_nullable
as bool,isEmptyAccounts: null == isEmptyAccounts ? _self.isEmptyAccounts : isEmptyAccounts // ignore: cast_nullable_to_non_nullable
as bool,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<BankAccount>,
  ));
}


}

// dart format on
