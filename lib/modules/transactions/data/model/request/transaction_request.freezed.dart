// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionRequest {

 double get value; String get description; DateTime get date; bool get done; String get type; String get category;
/// Create a copy of TransactionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionRequestCopyWith<TransactionRequest> get copyWith => _$TransactionRequestCopyWithImpl<TransactionRequest>(this as TransactionRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionRequest&&(identical(other.value, value) || other.value == value)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.done, done) || other.done == done)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,value,description,date,done,type,category);

@override
String toString() {
  return 'TransactionRequest(value: $value, description: $description, date: $date, done: $done, type: $type, category: $category)';
}


}

/// @nodoc
abstract mixin class $TransactionRequestCopyWith<$Res>  {
  factory $TransactionRequestCopyWith(TransactionRequest value, $Res Function(TransactionRequest) _then) = _$TransactionRequestCopyWithImpl;
@useResult
$Res call({
 double value, String description, DateTime date, bool done, String type, String category
});




}
/// @nodoc
class _$TransactionRequestCopyWithImpl<$Res>
    implements $TransactionRequestCopyWith<$Res> {
  _$TransactionRequestCopyWithImpl(this._self, this._then);

  final TransactionRequest _self;
  final $Res Function(TransactionRequest) _then;

/// Create a copy of TransactionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? description = null,Object? date = null,Object? done = null,Object? type = null,Object? category = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionRequest].
extension TransactionRequestPatterns on TransactionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionRequest value)  $default,){
final _that = this;
switch (_that) {
case _TransactionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double value,  String description,  DateTime date,  bool done,  String type,  String category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionRequest() when $default != null:
return $default(_that.value,_that.description,_that.date,_that.done,_that.type,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double value,  String description,  DateTime date,  bool done,  String type,  String category)  $default,) {final _that = this;
switch (_that) {
case _TransactionRequest():
return $default(_that.value,_that.description,_that.date,_that.done,_that.type,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double value,  String description,  DateTime date,  bool done,  String type,  String category)?  $default,) {final _that = this;
switch (_that) {
case _TransactionRequest() when $default != null:
return $default(_that.value,_that.description,_that.date,_that.done,_that.type,_that.category);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionRequest extends TransactionRequest {
   _TransactionRequest({required this.value, required this.description, required this.date, required this.done, required this.type, required this.category}): super._();
  

@override final  double value;
@override final  String description;
@override final  DateTime date;
@override final  bool done;
@override final  String type;
@override final  String category;

/// Create a copy of TransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionRequestCopyWith<_TransactionRequest> get copyWith => __$TransactionRequestCopyWithImpl<_TransactionRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionRequest&&(identical(other.value, value) || other.value == value)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.done, done) || other.done == done)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,value,description,date,done,type,category);

@override
String toString() {
  return 'TransactionRequest(value: $value, description: $description, date: $date, done: $done, type: $type, category: $category)';
}


}

/// @nodoc
abstract mixin class _$TransactionRequestCopyWith<$Res> implements $TransactionRequestCopyWith<$Res> {
  factory _$TransactionRequestCopyWith(_TransactionRequest value, $Res Function(_TransactionRequest) _then) = __$TransactionRequestCopyWithImpl;
@override @useResult
$Res call({
 double value, String description, DateTime date, bool done, String type, String category
});




}
/// @nodoc
class __$TransactionRequestCopyWithImpl<$Res>
    implements _$TransactionRequestCopyWith<$Res> {
  __$TransactionRequestCopyWithImpl(this._self, this._then);

  final _TransactionRequest _self;
  final $Res Function(_TransactionRequest) _then;

/// Create a copy of TransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? description = null,Object? date = null,Object? done = null,Object? type = null,Object? category = null,}) {
  return _then(_TransactionRequest(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
