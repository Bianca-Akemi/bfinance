// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionResponse {

@JsonKey(name: 'Id') int get id;@JsonKey(name: 'Description') String get description;@JsonKey(name: 'Value') double get value;@JsonKey(name: 'AccountId') int get accountId;@JsonKey(name: 'Date') DateTime get date;@JsonKey(name: 'Done') bool get done;@JsonKey(name: 'Type') TransactionType get type;@JsonKey(name: 'Category') CategoryType get category;
/// Create a copy of TransactionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionResponseCopyWith<TransactionResponse> get copyWith => _$TransactionResponseCopyWithImpl<TransactionResponse>(this as TransactionResponse, _$identity);

  /// Serializes this TransactionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.value, value) || other.value == value)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.date, date) || other.date == date)&&(identical(other.done, done) || other.done == done)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,value,accountId,date,done,type,category);

@override
String toString() {
  return 'TransactionResponse(id: $id, description: $description, value: $value, accountId: $accountId, date: $date, done: $done, type: $type, category: $category)';
}


}

/// @nodoc
abstract mixin class $TransactionResponseCopyWith<$Res>  {
  factory $TransactionResponseCopyWith(TransactionResponse value, $Res Function(TransactionResponse) _then) = _$TransactionResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') int id,@JsonKey(name: 'Description') String description,@JsonKey(name: 'Value') double value,@JsonKey(name: 'AccountId') int accountId,@JsonKey(name: 'Date') DateTime date,@JsonKey(name: 'Done') bool done,@JsonKey(name: 'Type') TransactionType type,@JsonKey(name: 'Category') CategoryType category
});




}
/// @nodoc
class _$TransactionResponseCopyWithImpl<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  _$TransactionResponseCopyWithImpl(this._self, this._then);

  final TransactionResponse _self;
  final $Res Function(TransactionResponse) _then;

/// Create a copy of TransactionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? description = null,Object? value = null,Object? accountId = null,Object? date = null,Object? done = null,Object? type = null,Object? category = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryType,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionResponse].
extension TransactionResponsePatterns on TransactionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionResponse value)  $default,){
final _that = this;
switch (_that) {
case _TransactionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Value')  double value, @JsonKey(name: 'AccountId')  int accountId, @JsonKey(name: 'Date')  DateTime date, @JsonKey(name: 'Done')  bool done, @JsonKey(name: 'Type')  TransactionType type, @JsonKey(name: 'Category')  CategoryType category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionResponse() when $default != null:
return $default(_that.id,_that.description,_that.value,_that.accountId,_that.date,_that.done,_that.type,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Value')  double value, @JsonKey(name: 'AccountId')  int accountId, @JsonKey(name: 'Date')  DateTime date, @JsonKey(name: 'Done')  bool done, @JsonKey(name: 'Type')  TransactionType type, @JsonKey(name: 'Category')  CategoryType category)  $default,) {final _that = this;
switch (_that) {
case _TransactionResponse():
return $default(_that.id,_that.description,_that.value,_that.accountId,_that.date,_that.done,_that.type,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  int id, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Value')  double value, @JsonKey(name: 'AccountId')  int accountId, @JsonKey(name: 'Date')  DateTime date, @JsonKey(name: 'Done')  bool done, @JsonKey(name: 'Type')  TransactionType type, @JsonKey(name: 'Category')  CategoryType category)?  $default,) {final _that = this;
switch (_that) {
case _TransactionResponse() when $default != null:
return $default(_that.id,_that.description,_that.value,_that.accountId,_that.date,_that.done,_that.type,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionResponse extends TransactionResponse {
   _TransactionResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Description') required this.description, @JsonKey(name: 'Value') required this.value, @JsonKey(name: 'AccountId') required this.accountId, @JsonKey(name: 'Date') required this.date, @JsonKey(name: 'Done') required this.done, @JsonKey(name: 'Type') required this.type, @JsonKey(name: 'Category') required this.category}): super._();
  factory _TransactionResponse.fromJson(Map<String, dynamic> json) => _$TransactionResponseFromJson(json);

@override@JsonKey(name: 'Id') final  int id;
@override@JsonKey(name: 'Description') final  String description;
@override@JsonKey(name: 'Value') final  double value;
@override@JsonKey(name: 'AccountId') final  int accountId;
@override@JsonKey(name: 'Date') final  DateTime date;
@override@JsonKey(name: 'Done') final  bool done;
@override@JsonKey(name: 'Type') final  TransactionType type;
@override@JsonKey(name: 'Category') final  CategoryType category;

/// Create a copy of TransactionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionResponseCopyWith<_TransactionResponse> get copyWith => __$TransactionResponseCopyWithImpl<_TransactionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.value, value) || other.value == value)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.date, date) || other.date == date)&&(identical(other.done, done) || other.done == done)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,value,accountId,date,done,type,category);

@override
String toString() {
  return 'TransactionResponse(id: $id, description: $description, value: $value, accountId: $accountId, date: $date, done: $done, type: $type, category: $category)';
}


}

/// @nodoc
abstract mixin class _$TransactionResponseCopyWith<$Res> implements $TransactionResponseCopyWith<$Res> {
  factory _$TransactionResponseCopyWith(_TransactionResponse value, $Res Function(_TransactionResponse) _then) = __$TransactionResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') int id,@JsonKey(name: 'Description') String description,@JsonKey(name: 'Value') double value,@JsonKey(name: 'AccountId') int accountId,@JsonKey(name: 'Date') DateTime date,@JsonKey(name: 'Done') bool done,@JsonKey(name: 'Type') TransactionType type,@JsonKey(name: 'Category') CategoryType category
});




}
/// @nodoc
class __$TransactionResponseCopyWithImpl<$Res>
    implements _$TransactionResponseCopyWith<$Res> {
  __$TransactionResponseCopyWithImpl(this._self, this._then);

  final _TransactionResponse _self;
  final $Res Function(_TransactionResponse) _then;

/// Create a copy of TransactionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? description = null,Object? value = null,Object? accountId = null,Object? date = null,Object? done = null,Object? type = null,Object? category = null,}) {
  return _then(_TransactionResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryType,
  ));
}


}

// dart format on
