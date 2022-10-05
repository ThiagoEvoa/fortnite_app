// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserStats _$UserStatsFromJson(Map<String, dynamic> json) {
  return _UserStats.fromJson(json);
}

/// @nodoc
mixin _$UserStats {
  int get wins => throw _privateConstructorUsedError;
  int get deaths => throw _privateConstructorUsedError;
  int get kills => throw _privateConstructorUsedError;
  double get kd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStatsCopyWith<UserStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatsCopyWith<$Res> {
  factory $UserStatsCopyWith(UserStats value, $Res Function(UserStats) then) =
      _$UserStatsCopyWithImpl<$Res>;
  $Res call({int wins, int deaths, int kills, double kd});
}

/// @nodoc
class _$UserStatsCopyWithImpl<$Res> implements $UserStatsCopyWith<$Res> {
  _$UserStatsCopyWithImpl(this._value, this._then);

  final UserStats _value;
  // ignore: unused_field
  final $Res Function(UserStats) _then;

  @override
  $Res call({
    Object? wins = freezed,
    Object? deaths = freezed,
    Object? kills = freezed,
    Object? kd = freezed,
  }) {
    return _then(_value.copyWith(
      wins: wins == freezed
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int,
      kills: kills == freezed
          ? _value.kills
          : kills // ignore: cast_nullable_to_non_nullable
              as int,
      kd: kd == freezed
          ? _value.kd
          : kd // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_UserStatsCopyWith<$Res> implements $UserStatsCopyWith<$Res> {
  factory _$$_UserStatsCopyWith(
          _$_UserStats value, $Res Function(_$_UserStats) then) =
      __$$_UserStatsCopyWithImpl<$Res>;
  @override
  $Res call({int wins, int deaths, int kills, double kd});
}

/// @nodoc
class __$$_UserStatsCopyWithImpl<$Res> extends _$UserStatsCopyWithImpl<$Res>
    implements _$$_UserStatsCopyWith<$Res> {
  __$$_UserStatsCopyWithImpl(
      _$_UserStats _value, $Res Function(_$_UserStats) _then)
      : super(_value, (v) => _then(v as _$_UserStats));

  @override
  _$_UserStats get _value => super._value as _$_UserStats;

  @override
  $Res call({
    Object? wins = freezed,
    Object? deaths = freezed,
    Object? kills = freezed,
    Object? kd = freezed,
  }) {
    return _then(_$_UserStats(
      wins: wins == freezed
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int,
      kills: kills == freezed
          ? _value.kills
          : kills // ignore: cast_nullable_to_non_nullable
              as int,
      kd: kd == freezed
          ? _value.kd
          : kd // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserStats implements _UserStats {
  const _$_UserStats(
      {required this.wins,
      required this.deaths,
      required this.kills,
      required this.kd});

  factory _$_UserStats.fromJson(Map<String, dynamic> json) =>
      _$$_UserStatsFromJson(json);

  @override
  final int wins;
  @override
  final int deaths;
  @override
  final int kills;
  @override
  final double kd;

  @override
  String toString() {
    return 'UserStats(wins: $wins, deaths: $deaths, kills: $kills, kd: $kd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStats &&
            const DeepCollectionEquality().equals(other.wins, wins) &&
            const DeepCollectionEquality().equals(other.deaths, deaths) &&
            const DeepCollectionEquality().equals(other.kills, kills) &&
            const DeepCollectionEquality().equals(other.kd, kd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wins),
      const DeepCollectionEquality().hash(deaths),
      const DeepCollectionEquality().hash(kills),
      const DeepCollectionEquality().hash(kd));

  @JsonKey(ignore: true)
  @override
  _$$_UserStatsCopyWith<_$_UserStats> get copyWith =>
      __$$_UserStatsCopyWithImpl<_$_UserStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStatsToJson(
      this,
    );
  }
}

abstract class _UserStats implements UserStats {
  const factory _UserStats(
      {required final int wins,
      required final int deaths,
      required final int kills,
      required final double kd}) = _$_UserStats;

  factory _UserStats.fromJson(Map<String, dynamic> json) =
      _$_UserStats.fromJson;

  @override
  int get wins;
  @override
  int get deaths;
  @override
  int get kills;
  @override
  double get kd;
  @override
  @JsonKey(ignore: true)
  _$$_UserStatsCopyWith<_$_UserStats> get copyWith =>
      throw _privateConstructorUsedError;
}
