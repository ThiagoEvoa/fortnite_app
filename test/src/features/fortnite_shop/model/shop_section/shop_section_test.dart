import 'dart:convert';

import '../../../../../test_helper/test_helper.dart';

void main() {
  test('FortniteShopSection initial state should return correctly', () {
    final expectedModel = ShopSection.initialState();

    expect(expectedModel.entries.isEmpty, true);
  });

  test('Transform FortniteShopSection ShopSection from json', () {
    final result = ShopSection.fromJson(mockFortniteShopSectionJson);
    expect(result, mockFortniteShopSectionModel);
  });

  test('Transform FortnieteShopSection model to json', () {
    final result = json.encode(mockFortniteShopSectionModel);
    expect(result, mockFortniteShopSectionStringJson);
  });
}
