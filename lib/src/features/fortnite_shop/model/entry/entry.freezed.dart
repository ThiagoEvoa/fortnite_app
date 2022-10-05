// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return _Entry.fromJson(json);
}

/// @nodoc
mixin _$Entry {
  int get regularPrice => throw _privateConstructorUsedError;
  int get finalPrice => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  String? get bundleName => throw _privateConstructorUsedError;
  String? get bundleInfo => throw _privateConstructorUsedError;
  String? get bundleImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryCopyWith<Entry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCopyWith<$Res> {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) then) =
      _$EntryCopyWithImpl<$Res>;
  $Res call(
      {int regularPrice,
      int finalPrice,
      List<Item> items,
      String? bundleName,
      String? bundleInfo,
      String? bundleImage});
}

/// @nodoc
class _$EntryCopyWithImpl<$Res> implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  final Entry _value;
  // ignore: unused_field
  final $Res Function(Entry) _then;

  @override
  $Res call({
    Object? regularPrice = freezed,
    Object? finalPrice = freezed,
    Object? items = freezed,
    Object? bundleName = freezed,
    Object? bundleInfo = freezed,
    Object? bundleImage = freezed,
  }) {
    return _then(_value.copyWith(
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as int,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      bundleName: bundleName == freezed
          ? _value.bundleName
          : bundleName // ignore: cast_nullable_to_non_nullable
              as String?,
      bundleInfo: bundleInfo == freezed
          ? _value.bundleInfo
          : bundleInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      bundleImage: bundleImage == freezed
          ? _value.bundleImage
          : bundleImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$$_EntryCopyWith(_$_Entry value, $Res Function(_$_Entry) then) =
      __$$_EntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int regularPrice,
      int finalPrice,
      List<Item> items,
      String? bundleName,
      String? bundleInfo,
      String? bundleImage});
}

/// @nodoc
class __$$_EntryCopyWithImpl<$Res> extends _$EntryCopyWithImpl<$Res>
    implements _$$_EntryCopyWith<$Res> {
  __$$_EntryCopyWithImpl(_$_Entry _value, $Res Function(_$_Entry) _then)
      : super(_value, (v) => _then(v as _$_Entry));

  @override
  _$_Entry get _value => super._value as _$_Entry;

  @override
  $Res call({
    Object? regularPrice = freezed,
    Object? finalPrice = freezed,
    Object? items = freezed,
    Object? bundleName = freezed,
    Object? bundleInfo = freezed,
    Object? bundleImage = freezed,
  }) {
    return _then(_$_Entry(
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as int,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      bundleName: bundleName == freezed
          ? _value.bundleName
          : bundleName // ignore: cast_nullable_to_non_nullable
              as String?,
      bundleInfo: bundleInfo == freezed
          ? _value.bundleInfo
          : bundleInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      bundleImage: bundleImage == freezed
          ? _value.bundleImage
          : bundleImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Entry implements _Entry {
  const _$_Entry(
      {required this.regularPrice,
      required this.finalPrice,
      required final List<Item> items,
      this.bundleName,
      this.bundleInfo,
      this.bundleImage})
      : _items = items;

  factory _$_Entry.fromJson(Map<String, dynamic> json) =>
      _$$_EntryFromJson(json);

  @override
  final int regularPrice;
  @override
  final int finalPrice;
  final List<Item> _items;
  @override
  List<Item> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? bundleName;
  @override
  final String? bundleInfo;
  @override
  final String? bundleImage;

  @override
  String toString() {
    return 'Entry(regularPrice: $regularPrice, finalPrice: $finalPrice, items: $items, bundleName: $bundleName, bundleInfo: $bundleInfo, bundleImage: $bundleImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Entry &&
            const DeepCollectionEquality()
                .equals(other.regularPrice, regularPrice) &&
            const DeepCollectionEquality()
                .equals(other.finalPrice, finalPrice) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.bundleName, bundleName) &&
            const DeepCollectionEquality()
                .equals(other.bundleInfo, bundleInfo) &&
            const DeepCollectionEquality()
                .equals(other.bundleImage, bundleImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(regularPrice),
      const DeepCollectionEquality().hash(finalPrice),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(bundleName),
      const DeepCollectionEquality().hash(bundleInfo),
      const DeepCollectionEquality().hash(bundleImage));

  @JsonKey(ignore: true)
  @override
  _$$_EntryCopyWith<_$_Entry> get copyWith =>
      __$$_EntryCopyWithImpl<_$_Entry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryToJson(
      this,
    );
  }
}

abstract class _Entry implements Entry {
  const factory _Entry(
      {required final int regularPrice,
      required final int finalPrice,
      required final List<Item> items,
      final String? bundleName,
      final String? bundleInfo,
      final String? bundleImage}) = _$_Entry;

  factory _Entry.fromJson(Map<String, dynamic> json) = _$_Entry.fromJson;

  @override
  int get regularPrice;
  @override
  int get finalPrice;
  @override
  List<Item> get items;
  @override
  String? get bundleName;
  @override
  String? get bundleInfo;
  @override
  String? get bundleImage;
  @override
  @JsonKey(ignore: true)
  _$$_EntryCopyWith<_$_Entry> get copyWith =>
      throw _privateConstructorUsedError;
}
