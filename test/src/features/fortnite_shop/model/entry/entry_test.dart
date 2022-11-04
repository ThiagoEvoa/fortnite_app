import 'dart:convert';

import '../../../../../test_helper/test_helper.dart';

void main() {
  test('FortniteEntry initial state should return correctly', () {
    final expectedModel = Entry.initialState();

    expect(expectedModel, isA<Entry>());
  });

  test('Transform FortniteEntry map from json', () {
    final result = Entry.fromJson(mockFortniteEntryJson);
    expect(result, mockFortniteEntryModel);
  });

  test('Transform FortniteEntry model to json', () {
    final result = json.encode(mockFortniteEntryModel);
    expect(result, mockFortniteEntryStringJson);
  });
}
