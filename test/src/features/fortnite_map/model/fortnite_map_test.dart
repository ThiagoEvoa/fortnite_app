import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:fortnite_app/src/features/fortnite_map/model/fortnite_map.dart';

import '../../../../test_util/test_util.dart';

void main() {
  test('Transform map model from json', () {
    final result = FortniteMap.fromJson(mockFortniteMapJson);
    expect(result, mockFortniteMapModel);
  });

  test('Transform map model to json', () {
    final result = json.encode(mockFortniteMapModel);
    expect(result, mockFortniteMapStringJson);
  });
}
