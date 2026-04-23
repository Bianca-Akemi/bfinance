// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditState {

 int get id; String get name; String get age; String get email; bool get isLoading; bool get startDeleteAccount;
/// Create a copy of EditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditStateCopyWith<EditState> get copyWith => _$EditStateCopyWithImpl<EditState>(this as EditState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.email, email) || other.email == email)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.startDeleteAccount, startDeleteAccount) || other.startDeleteAccount == startDeleteAccount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,age,email,isLoading,startDeleteAccount);

@override
String toString() {
  return 'EditState(id: $id, name: $name, age: $age, email: $email, isLoading: $isLoading, startDeleteAccount: $startDeleteAccount)';
}


}

/// @nodoc
abstract mixin class $EditStateCopyWith<$Res>  {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) _then) = _$EditStateCopyWithImpl;
@useResult
$Res call({
 int id, String name, String age, String email, bool isLoading, bool startDeleteAccount
});




}
/// @nodoc
class _$EditStateCopyWithImpl<$Res>
    implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._self, this._then);

  final EditState _self;
  final $Res Function(EditState) _then;

/// Create a copy of EditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? age = null,Object? email = null,Object? isLoading = null,Object? startDeleteAccount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,startDeleteAccount: null == startDeleteAccount ? _self.startDeleteAccount : startDeleteAccount // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EditState].
extension EditStatePatterns on EditState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id,  String name,  String age,  String email,  bool isLoading,  bool startDeleteAccount)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.id,_that.name,_that.age,_that.email,_that.isLoading,_that.startDeleteAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id,  String name,  String age,  String email,  bool isLoading,  bool startDeleteAccount)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.id,_that.name,_that.age,_that.email,_that.isLoading,_that.startDeleteAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id,  String name,  String age,  String email,  bool isLoading,  bool startDeleteAccount)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.id,_that.name,_that.age,_that.email,_that.isLoading,_that.startDeleteAccount);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements EditState {
  const _Initial({this.id = 0, this.name = '', this.age = '', this.email = '', this.isLoading = false, this.startDeleteAccount = false});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String age;
@override@JsonKey() final  String email;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool startDeleteAccount;

/// Create a copy of EditState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.email, email) || other.email == email)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.startDeleteAccount, startDeleteAccount) || other.startDeleteAccount == startDeleteAccount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,age,email,isLoading,startDeleteAccount);

@override
String toString() {
  return 'EditState.initial(id: $id, name: $name, age: $age, email: $email, isLoading: $isLoading, startDeleteAccount: $startDeleteAccount)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $EditStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String age, String email, bool isLoading, bool startDeleteAccount
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of EditState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? age = null,Object? email = null,Object? isLoading = null,Object? startDeleteAccount = null,}) {
  return _then(_Initial(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,startDeleteAccount: null == startDeleteAccount ? _self.startDeleteAccount : startDeleteAccount // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
