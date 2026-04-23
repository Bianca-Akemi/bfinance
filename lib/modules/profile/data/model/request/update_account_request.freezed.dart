// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateAccountRequest {

 String get name; double get balance;
/// Create a copy of UpdateAccountRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAccountRequestCopyWith<UpdateAccountRequest> get copyWith => _$UpdateAccountRequestCopyWithImpl<UpdateAccountRequest>(this as UpdateAccountRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAccountRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,name,balance);

@override
String toString() {
  return 'UpdateAccountRequest(name: $name, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $UpdateAccountRequestCopyWith<$Res>  {
  factory $UpdateAccountRequestCopyWith(UpdateAccountRequest value, $Res Function(UpdateAccountRequest) _then) = _$UpdateAccountRequestCopyWithImpl;
@useResult
$Res call({
 String name, double balance
});




}
/// @nodoc
class _$UpdateAccountRequestCopyWithImpl<$Res>
    implements $UpdateAccountRequestCopyWith<$Res> {
  _$UpdateAccountRequestCopyWithImpl(this._self, this._then);

  final UpdateAccountRequest _self;
  final $Res Function(UpdateAccountRequest) _then;

/// Create a copy of UpdateAccountRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? balance = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateAccountRequest].
extension UpdateAccountRequestPatterns on UpdateAccountRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateAccountRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateAccountRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateAccountRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateAccountRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateAccountRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateAccountRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateAccountRequest() when $default != null:
return $default(_that.name,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double balance)  $default,) {final _that = this;
switch (_that) {
case _UpdateAccountRequest():
return $default(_that.name,_that.balance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double balance)?  $default,) {final _that = this;
switch (_that) {
case _UpdateAccountRequest() when $default != null:
return $default(_that.name,_that.balance);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateAccountRequest extends UpdateAccountRequest {
   _UpdateAccountRequest({required this.name, required this.balance}): super._();
  

@override final  String name;
@override final  double balance;

/// Create a copy of UpdateAccountRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAccountRequestCopyWith<_UpdateAccountRequest> get copyWith => __$UpdateAccountRequestCopyWithImpl<_UpdateAccountRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAccountRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,name,balance);

@override
String toString() {
  return 'UpdateAccountRequest(name: $name, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$UpdateAccountRequestCopyWith<$Res> implements $UpdateAccountRequestCopyWith<$Res> {
  factory _$UpdateAccountRequestCopyWith(_UpdateAccountRequest value, $Res Function(_UpdateAccountRequest) _then) = __$UpdateAccountRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, double balance
});




}
/// @nodoc
class __$UpdateAccountRequestCopyWithImpl<$Res>
    implements _$UpdateAccountRequestCopyWith<$Res> {
  __$UpdateAccountRequestCopyWithImpl(this._self, this._then);

  final _UpdateAccountRequest _self;
  final $Res Function(_UpdateAccountRequest) _then;

/// Create a copy of UpdateAccountRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? balance = null,}) {
  return _then(_UpdateAccountRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
