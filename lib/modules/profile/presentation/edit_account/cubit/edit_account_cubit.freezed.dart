// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditAccountState {

 bool get isSaveLoading; bool get isDeleteLoading; int get id; String get name; double get balance;
/// Create a copy of EditAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditAccountStateCopyWith<EditAccountState> get copyWith => _$EditAccountStateCopyWithImpl<EditAccountState>(this as EditAccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditAccountState&&(identical(other.isSaveLoading, isSaveLoading) || other.isSaveLoading == isSaveLoading)&&(identical(other.isDeleteLoading, isDeleteLoading) || other.isDeleteLoading == isDeleteLoading)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveLoading,isDeleteLoading,id,name,balance);

@override
String toString() {
  return 'EditAccountState(isSaveLoading: $isSaveLoading, isDeleteLoading: $isDeleteLoading, id: $id, name: $name, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $EditAccountStateCopyWith<$Res>  {
  factory $EditAccountStateCopyWith(EditAccountState value, $Res Function(EditAccountState) _then) = _$EditAccountStateCopyWithImpl;
@useResult
$Res call({
 bool isSaveLoading, bool isDeleteLoading, int id, String name, double balance
});




}
/// @nodoc
class _$EditAccountStateCopyWithImpl<$Res>
    implements $EditAccountStateCopyWith<$Res> {
  _$EditAccountStateCopyWithImpl(this._self, this._then);

  final EditAccountState _self;
  final $Res Function(EditAccountState) _then;

/// Create a copy of EditAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSaveLoading = null,Object? isDeleteLoading = null,Object? id = null,Object? name = null,Object? balance = null,}) {
  return _then(_self.copyWith(
isSaveLoading: null == isSaveLoading ? _self.isSaveLoading : isSaveLoading // ignore: cast_nullable_to_non_nullable
as bool,isDeleteLoading: null == isDeleteLoading ? _self.isDeleteLoading : isDeleteLoading // ignore: cast_nullable_to_non_nullable
as bool,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EditAccountState].
extension EditAccountStatePatterns on EditAccountState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isSaveLoading,  bool isDeleteLoading,  int id,  String name,  double balance)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isSaveLoading,_that.isDeleteLoading,_that.id,_that.name,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isSaveLoading,  bool isDeleteLoading,  int id,  String name,  double balance)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.isSaveLoading,_that.isDeleteLoading,_that.id,_that.name,_that.balance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isSaveLoading,  bool isDeleteLoading,  int id,  String name,  double balance)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isSaveLoading,_that.isDeleteLoading,_that.id,_that.name,_that.balance);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements EditAccountState {
  const _Initial({this.isSaveLoading = false, this.isDeleteLoading = false, this.id = -1, this.name = '', this.balance = 0});
  

@override@JsonKey() final  bool isSaveLoading;
@override@JsonKey() final  bool isDeleteLoading;
@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  double balance;

/// Create a copy of EditAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.isSaveLoading, isSaveLoading) || other.isSaveLoading == isSaveLoading)&&(identical(other.isDeleteLoading, isDeleteLoading) || other.isDeleteLoading == isDeleteLoading)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,isSaveLoading,isDeleteLoading,id,name,balance);

@override
String toString() {
  return 'EditAccountState.initial(isSaveLoading: $isSaveLoading, isDeleteLoading: $isDeleteLoading, id: $id, name: $name, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $EditAccountStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 bool isSaveLoading, bool isDeleteLoading, int id, String name, double balance
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of EditAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSaveLoading = null,Object? isDeleteLoading = null,Object? id = null,Object? name = null,Object? balance = null,}) {
  return _then(_Initial(
isSaveLoading: null == isSaveLoading ? _self.isSaveLoading : isSaveLoading // ignore: cast_nullable_to_non_nullable
as bool,isDeleteLoading: null == isDeleteLoading ? _self.isDeleteLoading : isDeleteLoading // ignore: cast_nullable_to_non_nullable
as bool,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
