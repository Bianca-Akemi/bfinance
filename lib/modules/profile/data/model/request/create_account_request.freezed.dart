// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAccountRequest {

 String get name; double get balance;
/// Create a copy of CreateAccountRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccountRequestCopyWith<CreateAccountRequest> get copyWith => _$CreateAccountRequestCopyWithImpl<CreateAccountRequest>(this as CreateAccountRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,name,balance);

@override
String toString() {
  return 'CreateAccountRequest(name: $name, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $CreateAccountRequestCopyWith<$Res>  {
  factory $CreateAccountRequestCopyWith(CreateAccountRequest value, $Res Function(CreateAccountRequest) _then) = _$CreateAccountRequestCopyWithImpl;
@useResult
$Res call({
 String name, double balance
});




}
/// @nodoc
class _$CreateAccountRequestCopyWithImpl<$Res>
    implements $CreateAccountRequestCopyWith<$Res> {
  _$CreateAccountRequestCopyWithImpl(this._self, this._then);

  final CreateAccountRequest _self;
  final $Res Function(CreateAccountRequest) _then;

/// Create a copy of CreateAccountRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? balance = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAccountRequest].
extension CreateAccountRequestPatterns on CreateAccountRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAccountRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAccountRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAccountRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateAccountRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAccountRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAccountRequest() when $default != null:
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
case _CreateAccountRequest() when $default != null:
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
case _CreateAccountRequest():
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
case _CreateAccountRequest() when $default != null:
return $default(_that.name,_that.balance);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAccountRequest extends CreateAccountRequest {
   _CreateAccountRequest({required this.name, required this.balance}): super._();
  

@override final  String name;
@override final  double balance;

/// Create a copy of CreateAccountRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAccountRequestCopyWith<_CreateAccountRequest> get copyWith => __$CreateAccountRequestCopyWithImpl<_CreateAccountRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAccountRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,name,balance);

@override
String toString() {
  return 'CreateAccountRequest(name: $name, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$CreateAccountRequestCopyWith<$Res> implements $CreateAccountRequestCopyWith<$Res> {
  factory _$CreateAccountRequestCopyWith(_CreateAccountRequest value, $Res Function(_CreateAccountRequest) _then) = __$CreateAccountRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, double balance
});




}
/// @nodoc
class __$CreateAccountRequestCopyWithImpl<$Res>
    implements _$CreateAccountRequestCopyWith<$Res> {
  __$CreateAccountRequestCopyWithImpl(this._self, this._then);

  final _CreateAccountRequest _self;
  final $Res Function(_CreateAccountRequest) _then;

/// Create a copy of CreateAccountRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? balance = null,}) {
  return _then(_CreateAccountRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
