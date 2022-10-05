// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fortnite_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FortniteMap _$FortniteMapFromJson(Map<String, dynamic> json) {
  return _FortniteMap.fromJson(json);
}

/// @nodoc
mixin _$FortniteMap {
  @JsonKey(name: 'map')
  String get fortniteMapUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FortniteMapCopyWith<FortniteMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FortniteMapCopyWith<$Res> {
  factory $FortniteMapCopyWith(
          FortniteMap value, $Res Function(FortniteMap) then) =
      _$FortniteMapCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'map') String fortniteMapUrl});
}

/// @nodoc
class _$FortniteMapCopyWithImpl<$Res> implements $FortniteMapCopyWith<$Res> {
  _$FortniteMapCopyWithImpl(this._value, this._then);

  final FortniteMap _value;
  // ignore: unused_field
  final $Res Function(FortniteMap) _then;

  @override
  $Res call({
    Object? fortniteMapUrl = freezed,
  }) {
    return _then(_value.copyWith(
      fortniteMapUrl: fortniteMapUrl == freezed
          ? _value.fortniteMapUrl
          : fortniteMapUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FortniteMapCopyWith<$Res>
    implements $FortniteMapCopyWith<$Res> {
  factory _$$_FortniteMapCopyWith(
          _$_FortniteMap value, $Res Function(_$_FortniteMap) then) =
      __$$_FortniteMapCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'map') String fortniteMapUrl});
}

/// @nodoc
class __$$_FortniteMapCopyWithImpl<$Res> extends _$FortniteMapCopyWithImpl<$Res>
    implements _$$_FortniteMapCopyWith<$Res> {
  __$$_FortniteMapCopyWithImpl(
      _$_FortniteMap _value, $Res Function(_$_FortniteMap) _then)
      : super(_value, (v) => _then(v as _$_FortniteMap));

  @override
  _$_FortniteMap get _value => super._value as _$_FortniteMap;

  @override
  $Res call({
    Object? fortniteMapUrl = freezed,
  }) {
    return _then(_$_FortniteMap(
      fortniteMapUrl: fortniteMapUrl == freezed
          ? _value.fortniteMapUrl
          : fortniteMapUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FortniteMap implements _FortniteMap {
  const _$_FortniteMap({@JsonKey(name: 'map') required this.fortniteMapUrl});

  factory _$_FortniteMap.fromJson(Map<String, dynamic> json) =>
      _$$_FortniteMapFromJson(json);

  @override
  @JsonKey(name: 'map')
  final String fortniteMapUrl;

  @override
  String toString() {
    return 'FortniteMap(fortniteMapUrl: $fortniteMapUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FortniteMap &&
            const DeepCollectionEquality()
                .equals(other.fortniteMapUrl, fortniteMapUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fortniteMapUrl));

  @JsonKey(ignore: true)
  @override
  _$$_FortniteMapCopyWith<_$_FortniteMap> get copyWith =>
      __$$_FortniteMapCopyWithImpl<_$_FortniteMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FortniteMapToJson(
      this,
    );
  }
}

abstract class _FortniteMap implements FortniteMap {
  const factory _FortniteMap(
          {@JsonKey(name: 'map') required final String fortniteMapUrl}) =
      _$_FortniteMap;

  factory _FortniteMap.fromJson(Map<String, dynamic> json) =
      _$_FortniteMap.fromJson;

  @override
  @JsonKey(name: 'map')
  String get fortniteMapUrl;
  @override
  @JsonKey(ignore: true)
  _$$_FortniteMapCopyWith<_$_FortniteMap> get copyWith =>
      throw _privateConstructorUsedError;
}
