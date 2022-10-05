// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopSection _$ShopSectionFromJson(Map<String, dynamic> json) {
  return _ShopFactory.fromJson(json);
}

/// @nodoc
mixin _$ShopSection {
  List<Entry> get entries => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopSectionCopyWith<ShopSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopSectionCopyWith<$Res> {
  factory $ShopSectionCopyWith(
          ShopSection value, $Res Function(ShopSection) then) =
      _$ShopSectionCopyWithImpl<$Res>;
  $Res call({List<Entry> entries, String? name});
}

/// @nodoc
class _$ShopSectionCopyWithImpl<$Res> implements $ShopSectionCopyWith<$Res> {
  _$ShopSectionCopyWithImpl(this._value, this._then);

  final ShopSection _value;
  // ignore: unused_field
  final $Res Function(ShopSection) _then;

  @override
  $Res call({
    Object? entries = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      entries: entries == freezed
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Entry>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ShopFactoryCopyWith<$Res>
    implements $ShopSectionCopyWith<$Res> {
  factory _$$_ShopFactoryCopyWith(
          _$_ShopFactory value, $Res Function(_$_ShopFactory) then) =
      __$$_ShopFactoryCopyWithImpl<$Res>;
  @override
  $Res call({List<Entry> entries, String? name});
}

/// @nodoc
class __$$_ShopFactoryCopyWithImpl<$Res> extends _$ShopSectionCopyWithImpl<$Res>
    implements _$$_ShopFactoryCopyWith<$Res> {
  __$$_ShopFactoryCopyWithImpl(
      _$_ShopFactory _value, $Res Function(_$_ShopFactory) _then)
      : super(_value, (v) => _then(v as _$_ShopFactory));

  @override
  _$_ShopFactory get _value => super._value as _$_ShopFactory;

  @override
  $Res call({
    Object? entries = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ShopFactory(
      entries: entries == freezed
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Entry>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopFactory implements _ShopFactory {
  const _$_ShopFactory({required final List<Entry> entries, this.name})
      : _entries = entries;

  factory _$_ShopFactory.fromJson(Map<String, dynamic> json) =>
      _$$_ShopFactoryFromJson(json);

  final List<Entry> _entries;
  @override
  List<Entry> get entries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  final String? name;

  @override
  String toString() {
    return 'ShopSection(entries: $entries, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopFactory &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_entries),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ShopFactoryCopyWith<_$_ShopFactory> get copyWith =>
      __$$_ShopFactoryCopyWithImpl<_$_ShopFactory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopFactoryToJson(
      this,
    );
  }
}

abstract class _ShopFactory implements ShopSection {
  const factory _ShopFactory(
      {required final List<Entry> entries,
      final String? name}) = _$_ShopFactory;

  factory _ShopFactory.fromJson(Map<String, dynamic> json) =
      _$_ShopFactory.fromJson;

  @override
  List<Entry> get entries;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ShopFactoryCopyWith<_$_ShopFactory> get copyWith =>
      throw _privateConstructorUsedError;
}
