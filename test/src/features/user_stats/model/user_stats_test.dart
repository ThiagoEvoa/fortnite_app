import 'dart:convert';

import 'package:fortnite_app/src/features/user_stats/model/user_stats.dart';

import '../../../../test_helper/test_helper.dart';

void main() {
  test('UserStats initial state should return correctly', () {
    final expectedModel = UserStats.initialState();

    expect(expectedModel.kd == 0, true);
  });

  test('Transform UserStats map from json', () {
    final result = UserStats.fromJson(mockUserStatsJson);
    expect(result, mockUserStatsModel);
  });

  test('Transform UserStats model to json', () {
    final result = json.encode(mockUserStatsModel);
    expect(result, mockUserStatsStringJson);
  });
}
