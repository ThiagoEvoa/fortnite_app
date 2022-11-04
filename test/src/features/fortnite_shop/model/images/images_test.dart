import 'dart:convert';

import '../../../../../test_helper/test_helper.dart';

void main() {
  test('Images initial state should return correctly', () {
    final expectedModel = Images.initialState();

    expect(expectedModel.featured?.isEmpty, true);
  });

  test('Transform Images map from json', () {
    final result = Images.fromJson(mockFortniteImagesJson);
    expect(result, mockFortniteImagesModel);
  });

  test('Transform FortnieteMap model to json', () {
    final result = json.encode(mockFortniteImagesModel);
    expect(result, mockFortniteImagesStringJson);
  });
}
