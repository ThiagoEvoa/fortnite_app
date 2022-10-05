// ignore_for_file: unused_element

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/fortnite_shop/model/model.dart';
import 'package:fortnite_app/src/features/fortnite_shop/repository/fortnite_shop_repository.dart';
import 'package:retrofit/retrofit.dart';

import '../../../util/http_util.dart';

part 'fortnite_shop_repository_impl.g.dart';

final fortniteShopRepository = Provider(
  (ref) => FortniteShopRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

@RestApi()
abstract class FortniteShopRepositoryImpl implements FortniteShopRepository {
  factory FortniteShopRepositoryImpl(Dio dio) = _FortniteShopRepositoryImpl;

  @GET('shop')
  @override
  Future<FortniteShop> retrieveFortniteShop();
}
