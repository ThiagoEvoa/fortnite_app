import 'package:freezed_annotation/freezed_annotation.dart';

part 'images.freezed.dart';
part 'images.g.dart';

@freezed
class Images with _$Images {
  const factory Images({String? smallIcon, String? icon, String? featured}) =
      _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  factory Images.initialState() => const Images(
        smallIcon: '',
        icon: '',
        featured: '',
      );
}
