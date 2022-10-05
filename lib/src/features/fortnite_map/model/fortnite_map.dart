import 'package:freezed_annotation/freezed_annotation.dart';

part 'fortnite_map.freezed.dart';
part 'fortnite_map.g.dart';

@freezed
class FortniteMap with _$FortniteMap {
  const factory FortniteMap({
    @JsonKey(name: 'map') required String fortniteMapUrl,
  }) = _FortniteMap;

  factory FortniteMap.fromJson(Map<String, dynamic> json) =>
      _$FortniteMapFromJson(json);

  factory FortniteMap.initialState() => const FortniteMap(fortniteMapUrl: '');
}
