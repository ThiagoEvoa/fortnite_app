import 'dart:convert';

import 'package:fortnite_app/src/features/fortnite_map/model/fortnite_map.dart';

import '../../../../test_helper/test_helper.dart';

void main() {
  test('FortniteMap initial state should return correctly', () {
    final expectedModel = FortniteMap.initialState();

    expect(expectedModel.fortniteMapUrl.isEmpty, true);
  });

  test('Transform FortniteMap map from json', () {
    final result = FortniteMap.fromJson(mockFortniteMapJson);
    expect(result, mockFortniteMapModel);
  });

  test('Transform FortnieteMap model to json', () {
    final result = json.encode(mockFortniteMapModel);
    expect(result, mockFortniteMapStringJson);
  });
}
