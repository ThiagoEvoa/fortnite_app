import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/fortnite_map/model/fortnite_map.dart';
import 'package:retrofit/retrofit.dart';

import '../../../util/http_util.dart';
import 'fortnite_map_repository.dart';

part 'fortnite_map_repository_impl.g.dart';

final fortniteMapRepository = Provider(
  (ref) => FortniteMapRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

@RestApi()
abstract class FortniteMapRepositoryImpl implements FortniteMapRepository {
  factory FortniteMapRepositoryImpl(Dio dio) = _FortniteMapRepositoryImpl;

  @GET('map')
  @override
  Future<FortniteMap> retrieveFortniteMap();
}
