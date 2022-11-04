import 'dart:convert';

import '../../../../../test_helper/test_helper.dart';

void main() {
  test('FortniteItem initial state should return correctly', () {
    final expectedModel = Item.initialState();

    expect(expectedModel, isA<Item>());
  });

  test('Transform FortniteItem map from json', () {
    final result = Item.fromJson(mockFortniteItemJson);
    expect(result, mockFortniteItemModel);
  });

  test('Transform FortnieteMap model to json', () {
    final result = json.encode(mockFortniteItemModel);
    expect(result, mockFortniteItemStringJson);
  });
}
