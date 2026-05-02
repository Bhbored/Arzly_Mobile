// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DioConfig {

 String get baseUrl; String get apiKey; bool get enableLogging; Duration get connectTimeout; Duration get receiveTimeout; Duration get sendTimeout; String get contentType; ResponseType get responseType; String get acceptHeader; String get clientVersion;
/// Create a copy of DioConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DioConfigCopyWith<DioConfig> get copyWith => _$DioConfigCopyWithImpl<DioConfig>(this as DioConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DioConfig&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.enableLogging, enableLogging) || other.enableLogging == enableLogging)&&(identical(other.connectTimeout, connectTimeout) || other.connectTimeout == connectTimeout)&&(identical(other.receiveTimeout, receiveTimeout) || other.receiveTimeout == receiveTimeout)&&(identical(other.sendTimeout, sendTimeout) || other.sendTimeout == sendTimeout)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.acceptHeader, acceptHeader) || other.acceptHeader == acceptHeader)&&(identical(other.clientVersion, clientVersion) || other.clientVersion == clientVersion));
}


@override
int get hashCode => Object.hash(runtimeType,baseUrl,apiKey,enableLogging,connectTimeout,receiveTimeout,sendTimeout,contentType,responseType,acceptHeader,clientVersion);

@override
String toString() {
  return 'DioConfig(baseUrl: $baseUrl, apiKey: $apiKey, enableLogging: $enableLogging, connectTimeout: $connectTimeout, receiveTimeout: $receiveTimeout, sendTimeout: $sendTimeout, contentType: $contentType, responseType: $responseType, acceptHeader: $acceptHeader, clientVersion: $clientVersion)';
}


}

/// @nodoc
abstract mixin class $DioConfigCopyWith<$Res>  {
  factory $DioConfigCopyWith(DioConfig value, $Res Function(DioConfig) _then) = _$DioConfigCopyWithImpl;
@useResult
$Res call({
 String baseUrl, String apiKey, bool enableLogging, Duration connectTimeout, Duration receiveTimeout, Duration sendTimeout, String contentType, ResponseType responseType, String acceptHeader, String clientVersion
});




}
/// @nodoc
class _$DioConfigCopyWithImpl<$Res>
    implements $DioConfigCopyWith<$Res> {
  _$DioConfigCopyWithImpl(this._self, this._then);

  final DioConfig _self;
  final $Res Function(DioConfig) _then;

/// Create a copy of DioConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseUrl = null,Object? apiKey = null,Object? enableLogging = null,Object? connectTimeout = null,Object? receiveTimeout = null,Object? sendTimeout = null,Object? contentType = null,Object? responseType = null,Object? acceptHeader = null,Object? clientVersion = null,}) {
  return _then(_self.copyWith(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,enableLogging: null == enableLogging ? _self.enableLogging : enableLogging // ignore: cast_nullable_to_non_nullable
as bool,connectTimeout: null == connectTimeout ? _self.connectTimeout : connectTimeout // ignore: cast_nullable_to_non_nullable
as Duration,receiveTimeout: null == receiveTimeout ? _self.receiveTimeout : receiveTimeout // ignore: cast_nullable_to_non_nullable
as Duration,sendTimeout: null == sendTimeout ? _self.sendTimeout : sendTimeout // ignore: cast_nullable_to_non_nullable
as Duration,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as ResponseType,acceptHeader: null == acceptHeader ? _self.acceptHeader : acceptHeader // ignore: cast_nullable_to_non_nullable
as String,clientVersion: null == clientVersion ? _self.clientVersion : clientVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DioConfig].
extension DioConfigPatterns on DioConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DioConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DioConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DioConfig value)  $default,){
final _that = this;
switch (_that) {
case _DioConfig():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DioConfig value)?  $default,){
final _that = this;
switch (_that) {
case _DioConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String baseUrl,  String apiKey,  bool enableLogging,  Duration connectTimeout,  Duration receiveTimeout,  Duration sendTimeout,  String contentType,  ResponseType responseType,  String acceptHeader,  String clientVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DioConfig() when $default != null:
return $default(_that.baseUrl,_that.apiKey,_that.enableLogging,_that.connectTimeout,_that.receiveTimeout,_that.sendTimeout,_that.contentType,_that.responseType,_that.acceptHeader,_that.clientVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String baseUrl,  String apiKey,  bool enableLogging,  Duration connectTimeout,  Duration receiveTimeout,  Duration sendTimeout,  String contentType,  ResponseType responseType,  String acceptHeader,  String clientVersion)  $default,) {final _that = this;
switch (_that) {
case _DioConfig():
return $default(_that.baseUrl,_that.apiKey,_that.enableLogging,_that.connectTimeout,_that.receiveTimeout,_that.sendTimeout,_that.contentType,_that.responseType,_that.acceptHeader,_that.clientVersion);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String baseUrl,  String apiKey,  bool enableLogging,  Duration connectTimeout,  Duration receiveTimeout,  Duration sendTimeout,  String contentType,  ResponseType responseType,  String acceptHeader,  String clientVersion)?  $default,) {final _that = this;
switch (_that) {
case _DioConfig() when $default != null:
return $default(_that.baseUrl,_that.apiKey,_that.enableLogging,_that.connectTimeout,_that.receiveTimeout,_that.sendTimeout,_that.contentType,_that.responseType,_that.acceptHeader,_that.clientVersion);case _:
  return null;

}
}

}

/// @nodoc


class _DioConfig implements DioConfig {
  const _DioConfig({required this.baseUrl, this.apiKey = '', this.enableLogging = true, this.connectTimeout = const Duration(seconds: 10), this.receiveTimeout = const Duration(seconds: 15), this.sendTimeout = const Duration(seconds: 30), this.contentType = Headers.jsonContentType, this.responseType = ResponseType.json, this.acceptHeader = 'application/json', this.clientVersion = '1.0.0'});
  

@override final  String baseUrl;
@override@JsonKey() final  String apiKey;
@override@JsonKey() final  bool enableLogging;
@override@JsonKey() final  Duration connectTimeout;
@override@JsonKey() final  Duration receiveTimeout;
@override@JsonKey() final  Duration sendTimeout;
@override@JsonKey() final  String contentType;
@override@JsonKey() final  ResponseType responseType;
@override@JsonKey() final  String acceptHeader;
@override@JsonKey() final  String clientVersion;

/// Create a copy of DioConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DioConfigCopyWith<_DioConfig> get copyWith => __$DioConfigCopyWithImpl<_DioConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DioConfig&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.enableLogging, enableLogging) || other.enableLogging == enableLogging)&&(identical(other.connectTimeout, connectTimeout) || other.connectTimeout == connectTimeout)&&(identical(other.receiveTimeout, receiveTimeout) || other.receiveTimeout == receiveTimeout)&&(identical(other.sendTimeout, sendTimeout) || other.sendTimeout == sendTimeout)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.acceptHeader, acceptHeader) || other.acceptHeader == acceptHeader)&&(identical(other.clientVersion, clientVersion) || other.clientVersion == clientVersion));
}


@override
int get hashCode => Object.hash(runtimeType,baseUrl,apiKey,enableLogging,connectTimeout,receiveTimeout,sendTimeout,contentType,responseType,acceptHeader,clientVersion);

@override
String toString() {
  return 'DioConfig(baseUrl: $baseUrl, apiKey: $apiKey, enableLogging: $enableLogging, connectTimeout: $connectTimeout, receiveTimeout: $receiveTimeout, sendTimeout: $sendTimeout, contentType: $contentType, responseType: $responseType, acceptHeader: $acceptHeader, clientVersion: $clientVersion)';
}


}

/// @nodoc
abstract mixin class _$DioConfigCopyWith<$Res> implements $DioConfigCopyWith<$Res> {
  factory _$DioConfigCopyWith(_DioConfig value, $Res Function(_DioConfig) _then) = __$DioConfigCopyWithImpl;
@override @useResult
$Res call({
 String baseUrl, String apiKey, bool enableLogging, Duration connectTimeout, Duration receiveTimeout, Duration sendTimeout, String contentType, ResponseType responseType, String acceptHeader, String clientVersion
});




}
/// @nodoc
class __$DioConfigCopyWithImpl<$Res>
    implements _$DioConfigCopyWith<$Res> {
  __$DioConfigCopyWithImpl(this._self, this._then);

  final _DioConfig _self;
  final $Res Function(_DioConfig) _then;

/// Create a copy of DioConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseUrl = null,Object? apiKey = null,Object? enableLogging = null,Object? connectTimeout = null,Object? receiveTimeout = null,Object? sendTimeout = null,Object? contentType = null,Object? responseType = null,Object? acceptHeader = null,Object? clientVersion = null,}) {
  return _then(_DioConfig(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,enableLogging: null == enableLogging ? _self.enableLogging : enableLogging // ignore: cast_nullable_to_non_nullable
as bool,connectTimeout: null == connectTimeout ? _self.connectTimeout : connectTimeout // ignore: cast_nullable_to_non_nullable
as Duration,receiveTimeout: null == receiveTimeout ? _self.receiveTimeout : receiveTimeout // ignore: cast_nullable_to_non_nullable
as Duration,sendTimeout: null == sendTimeout ? _self.sendTimeout : sendTimeout // ignore: cast_nullable_to_non_nullable
as Duration,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as ResponseType,acceptHeader: null == acceptHeader ? _self.acceptHeader : acceptHeader // ignore: cast_nullable_to_non_nullable
as String,clientVersion: null == clientVersion ? _self.clientVersion : clientVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
