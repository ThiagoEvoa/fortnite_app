import 'package:json_annotation/json_annotation.dart';

part 'fortnite_map.g.dart';

@JsonSerializable()
class FortniteMap {
  @JsonKey(name: 'map')
  final String fortniteMapUrl;

  FortniteMap({required this.fortniteMapUrl});

  factory FortniteMap.fromJson(Map<String, dynamic> json) =>
      _$FortniteMapFromJson(json);

  Map<String, dynamic> toJson() => _$FortniteMapToJson(this);

  factory FortniteMap.initialState() => FortniteMap(fortniteMapUrl: '');
}
