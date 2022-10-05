// ignore_for_file: unused_element

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/user_stats/model/user_stats.dart';
import 'package:retrofit/retrofit.dart';

import '../../../util/http_util.dart';
import 'user_stats_repository.dart';

part 'user_stats_repository_impl.g.dart';

final userStatsRepository = Provider(
  (ref) => UserStatsRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

@RestApi()
abstract class UserStatsRepositoryImpl implements UserStatsRepository {
  factory UserStatsRepositoryImpl(Dio dio) = _UserStatsRepositoryImpl;

  @GET('stats/{userName}')
  @override
  Future<UserStats> retrieveUserStats({@Path() required String userName});
}
