import 'dart:convert';

import '../../../../../test_helper/test_helper.dart';

void main() {
  test('FortniteShop initial state should return correctly', () {
    final expectedModel = FortniteShop.initialState();

    expect(expectedModel, isA<FortniteShop>());
  });

  test('Transform FortniteShop map from json', () {
    final result = FortniteShop.fromJson(mockFortniteShopJson);
    expect(result, mockFortniteShopModel);
  });

  test('Transform FortniteShop model to json', () {
    final result = json.encode(mockFortniteShopModel);
    expect(result, mockFortniteShopStringJson);
  });
}
