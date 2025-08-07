// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScoreResponse {

 Header get header;
/// Create a copy of ScoreResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoreResponseCopyWith<ScoreResponse> get copyWith => _$ScoreResponseCopyWithImpl<ScoreResponse>(this as ScoreResponse, _$identity);

  /// Serializes this ScoreResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoreResponse&&(identical(other.header, header) || other.header == header));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header);

@override
String toString() {
  return 'ScoreResponse(header: $header)';
}


}

/// @nodoc
abstract mixin class $ScoreResponseCopyWith<$Res>  {
  factory $ScoreResponseCopyWith(ScoreResponse value, $Res Function(ScoreResponse) _then) = _$ScoreResponseCopyWithImpl;
@useResult
$Res call({
 Header header
});


$HeaderCopyWith<$Res> get header;

}
/// @nodoc
class _$ScoreResponseCopyWithImpl<$Res>
    implements $ScoreResponseCopyWith<$Res> {
  _$ScoreResponseCopyWithImpl(this._self, this._then);

  final ScoreResponse _self;
  final $Res Function(ScoreResponse) _then;

/// Create a copy of ScoreResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as Header,
  ));
}
/// Create a copy of ScoreResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeaderCopyWith<$Res> get header {
  
  return $HeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScoreResponse].
extension ScoreResponsePatterns on ScoreResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoreResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoreResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoreResponse value)  $default,){
final _that = this;
switch (_that) {
case _ScoreResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoreResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ScoreResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Header header)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoreResponse() when $default != null:
return $default(_that.header);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Header header)  $default,) {final _that = this;
switch (_that) {
case _ScoreResponse():
return $default(_that.header);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Header header)?  $default,) {final _that = this;
switch (_that) {
case _ScoreResponse() when $default != null:
return $default(_that.header);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScoreResponse implements ScoreResponse {
  const _ScoreResponse({required this.header});
  factory _ScoreResponse.fromJson(Map<String, dynamic> json) => _$ScoreResponseFromJson(json);

@override final  Header header;

/// Create a copy of ScoreResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoreResponseCopyWith<_ScoreResponse> get copyWith => __$ScoreResponseCopyWithImpl<_ScoreResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScoreResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoreResponse&&(identical(other.header, header) || other.header == header));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header);

@override
String toString() {
  return 'ScoreResponse(header: $header)';
}


}

/// @nodoc
abstract mixin class _$ScoreResponseCopyWith<$Res> implements $ScoreResponseCopyWith<$Res> {
  factory _$ScoreResponseCopyWith(_ScoreResponse value, $Res Function(_ScoreResponse) _then) = __$ScoreResponseCopyWithImpl;
@override @useResult
$Res call({
 Header header
});


@override $HeaderCopyWith<$Res> get header;

}
/// @nodoc
class __$ScoreResponseCopyWithImpl<$Res>
    implements _$ScoreResponseCopyWith<$Res> {
  __$ScoreResponseCopyWithImpl(this._self, this._then);

  final _ScoreResponse _self;
  final $Res Function(_ScoreResponse) _then;

/// Create a copy of ScoreResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,}) {
  return _then(_ScoreResponse(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as Header,
  ));
}

/// Create a copy of ScoreResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeaderCopyWith<$Res> get header {
  
  return $HeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}
}


/// @nodoc
mixin _$Header {

 String get code; String get desc;
/// Create a copy of Header
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaderCopyWith<Header> get copyWith => _$HeaderCopyWithImpl<Header>(this as Header, _$identity);

  /// Serializes this Header to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Header&&(identical(other.code, code) || other.code == code)&&(identical(other.desc, desc) || other.desc == desc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,desc);

@override
String toString() {
  return 'Header(code: $code, desc: $desc)';
}


}

/// @nodoc
abstract mixin class $HeaderCopyWith<$Res>  {
  factory $HeaderCopyWith(Header value, $Res Function(Header) _then) = _$HeaderCopyWithImpl;
@useResult
$Res call({
 String code, String desc
});




}
/// @nodoc
class _$HeaderCopyWithImpl<$Res>
    implements $HeaderCopyWith<$Res> {
  _$HeaderCopyWithImpl(this._self, this._then);

  final Header _self;
  final $Res Function(Header) _then;

/// Create a copy of Header
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? desc = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Header].
extension HeaderPatterns on Header {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Header value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Header() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Header value)  $default,){
final _that = this;
switch (_that) {
case _Header():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Header value)?  $default,){
final _that = this;
switch (_that) {
case _Header() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String desc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Header() when $default != null:
return $default(_that.code,_that.desc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String desc)  $default,) {final _that = this;
switch (_that) {
case _Header():
return $default(_that.code,_that.desc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String desc)?  $default,) {final _that = this;
switch (_that) {
case _Header() when $default != null:
return $default(_that.code,_that.desc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Header implements Header {
  const _Header({required this.code, required this.desc});
  factory _Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);

@override final  String code;
@override final  String desc;

/// Create a copy of Header
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderCopyWith<_Header> get copyWith => __$HeaderCopyWithImpl<_Header>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Header&&(identical(other.code, code) || other.code == code)&&(identical(other.desc, desc) || other.desc == desc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,desc);

@override
String toString() {
  return 'Header(code: $code, desc: $desc)';
}


}

/// @nodoc
abstract mixin class _$HeaderCopyWith<$Res> implements $HeaderCopyWith<$Res> {
  factory _$HeaderCopyWith(_Header value, $Res Function(_Header) _then) = __$HeaderCopyWithImpl;
@override @useResult
$Res call({
 String code, String desc
});




}
/// @nodoc
class __$HeaderCopyWithImpl<$Res>
    implements _$HeaderCopyWith<$Res> {
  __$HeaderCopyWithImpl(this._self, this._then);

  final _Header _self;
  final $Res Function(_Header) _then;

/// Create a copy of Header
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? desc = null,}) {
  return _then(_Header(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
