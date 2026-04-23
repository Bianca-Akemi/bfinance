// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PeriodRequest {

 DateTime get initialDate; DateTime get endDate;
/// Create a copy of PeriodRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeriodRequestCopyWith<PeriodRequest> get copyWith => _$PeriodRequestCopyWithImpl<PeriodRequest>(this as PeriodRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeriodRequest&&(identical(other.initialDate, initialDate) || other.initialDate == initialDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,initialDate,endDate);

@override
String toString() {
  return 'PeriodRequest(initialDate: $initialDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $PeriodRequestCopyWith<$Res>  {
  factory $PeriodRequestCopyWith(PeriodRequest value, $Res Function(PeriodRequest) _then) = _$PeriodRequestCopyWithImpl;
@useResult
$Res call({
 DateTime initialDate, DateTime endDate
});




}
/// @nodoc
class _$PeriodRequestCopyWithImpl<$Res>
    implements $PeriodRequestCopyWith<$Res> {
  _$PeriodRequestCopyWithImpl(this._self, this._then);

  final PeriodRequest _self;
  final $Res Function(PeriodRequest) _then;

/// Create a copy of PeriodRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialDate = null,Object? endDate = null,}) {
  return _then(_self.copyWith(
initialDate: null == initialDate ? _self.initialDate : initialDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PeriodRequest].
extension PeriodRequestPatterns on PeriodRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeriodRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeriodRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeriodRequest value)  $default,){
final _that = this;
switch (_that) {
case _PeriodRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeriodRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PeriodRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime initialDate,  DateTime endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeriodRequest() when $default != null:
return $default(_that.initialDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime initialDate,  DateTime endDate)  $default,) {final _that = this;
switch (_that) {
case _PeriodRequest():
return $default(_that.initialDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime initialDate,  DateTime endDate)?  $default,) {final _that = this;
switch (_that) {
case _PeriodRequest() when $default != null:
return $default(_that.initialDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc


class _PeriodRequest extends PeriodRequest {
   _PeriodRequest({required this.initialDate, required this.endDate}): super._();
  

@override final  DateTime initialDate;
@override final  DateTime endDate;

/// Create a copy of PeriodRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeriodRequestCopyWith<_PeriodRequest> get copyWith => __$PeriodRequestCopyWithImpl<_PeriodRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeriodRequest&&(identical(other.initialDate, initialDate) || other.initialDate == initialDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,initialDate,endDate);

@override
String toString() {
  return 'PeriodRequest(initialDate: $initialDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$PeriodRequestCopyWith<$Res> implements $PeriodRequestCopyWith<$Res> {
  factory _$PeriodRequestCopyWith(_PeriodRequest value, $Res Function(_PeriodRequest) _then) = __$PeriodRequestCopyWithImpl;
@override @useResult
$Res call({
 DateTime initialDate, DateTime endDate
});




}
/// @nodoc
class __$PeriodRequestCopyWithImpl<$Res>
    implements _$PeriodRequestCopyWith<$Res> {
  __$PeriodRequestCopyWithImpl(this._self, this._then);

  final _PeriodRequest _self;
  final $Res Function(_PeriodRequest) _then;

/// Create a copy of PeriodRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initialDate = null,Object? endDate = null,}) {
  return _then(_PeriodRequest(
initialDate: null == initialDate ? _self.initialDate : initialDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
