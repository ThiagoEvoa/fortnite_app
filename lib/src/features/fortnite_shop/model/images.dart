import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable()
class Images {
  Images({this.smallIcon, this.icon, this.featured});

  final String? smallIcon;
  final String? icon;
  final String? featured;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);

  factory Images.initialState() => Images(
        smallIcon: '',
        icon: '',
        featured: '',
      );
}
