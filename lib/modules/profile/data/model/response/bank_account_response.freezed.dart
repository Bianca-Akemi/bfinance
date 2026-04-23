// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankAccountResponse {

@JsonKey(name: 'Id') int get id;@JsonKey(name: 'Name') String get name;@JsonKey(name: 'Balance') double get balance;@JsonKey(name: 'UserId') int get userId;
/// Create a copy of BankAccountResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountResponseCopyWith<BankAccountResponse> get copyWith => _$BankAccountResponseCopyWithImpl<BankAccountResponse>(this as BankAccountResponse, _$identity);

  /// Serializes this BankAccountResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccountResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,balance,userId);

@override
String toString() {
  return 'BankAccountResponse(id: $id, name: $name, balance: $balance, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $BankAccountResponseCopyWith<$Res>  {
  factory $BankAccountResponseCopyWith(BankAccountResponse value, $Res Function(BankAccountResponse) _then) = _$BankAccountResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') int id,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Balance') double balance,@JsonKey(name: 'UserId') int userId
});




}
/// @nodoc
class _$BankAccountResponseCopyWithImpl<$Res>
    implements $BankAccountResponseCopyWith<$Res> {
  _$BankAccountResponseCopyWithImpl(this._self, this._then);

  final BankAccountResponse _self;
  final $Res Function(BankAccountResponse) _then;

/// Create a copy of BankAccountResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? balance = null,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccountResponse].
extension BankAccountResponsePatterns on BankAccountResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccountResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccountResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccountResponse value)  $default,){
final _that = this;
switch (_that) {
case _BankAccountResponse():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccountResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccountResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Balance')  double balance, @JsonKey(name: 'UserId')  int userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccountResponse() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Balance')  double balance, @JsonKey(name: 'UserId')  int userId)  $default,) {final _that = this;
switch (_that) {
case _BankAccountResponse():
return $default(_that.id,_that.name,_that.balance,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Balance')  double balance, @JsonKey(name: 'UserId')  int userId)?  $default,) {final _that = this;
switch (_that) {
case _BankAccountResponse() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankAccountResponse extends BankAccountResponse {
   _BankAccountResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Name') required this.name, @JsonKey(name: 'Balance') required this.balance, @JsonKey(name: 'UserId') required this.userId}): super._();
  factory _BankAccountResponse.fromJson(Map<String, dynamic> json) => _$BankAccountResponseFromJson(json);

@override@JsonKey(name: 'Id') final  int id;
@override@JsonKey(name: 'Name') final  String name;
@override@JsonKey(name: 'Balance') final  double balance;
@override@JsonKey(name: 'UserId') final  int userId;

/// Create a copy of BankAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountResponseCopyWith<_BankAccountResponse> get copyWith => __$BankAccountResponseCopyWithImpl<_BankAccountResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankAccountResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccountResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,balance,userId);

@override
String toString() {
  return 'BankAccountResponse(id: $id, name: $name, balance: $balance, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$BankAccountResponseCopyWith<$Res> implements $BankAccountResponseCopyWith<$Res> {
  factory _$BankAccountResponseCopyWith(_BankAccountResponse value, $Res Function(_BankAccountResponse) _then) = __$BankAccountResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') int id,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Balance') double balance,@JsonKey(name: 'UserId') int userId
});




}
/// @nodoc
class __$BankAccountResponseCopyWithImpl<$Res>
    implements _$BankAccountResponseCopyWith<$Res> {
  __$BankAccountResponseCopyWithImpl(this._self, this._then);

  final _BankAccountResponse _self;
  final $Res Function(_BankAccountResponse) _then;

/// Create a copy of BankAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? balance = null,Object? userId = null,}) {
  return _then(_BankAccountResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
