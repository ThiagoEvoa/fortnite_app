import 'dart:io';

import 'package:mocktail/mocktail.dart';

export 'package:dio/dio.dart';
export 'package:flutter/material.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:flutter_localizations/flutter_localizations.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:flutter_test/flutter_test.dart';
export 'package:fortnite_app/src/features/features.dart';
export 'package:mocktail/mocktail.dart';

export 'mocks/dio_mock.dart';
export 'mocks/fortnite_entry_mocks.dart';
export 'mocks/fortnite_images_mocks.dart';
export 'mocks/fortnite_images_mocks.dart';
export 'mocks/fortnite_item_mocks.dart';
export 'mocks/fortnite_map_mocks.dart';
export 'mocks/fortnite_shop_mocks.dart';
export 'mocks/fortnite_shop_section_mocks.dart';
export 'mocks/user_stats_mocks.dart';

class MockHttpClient extends Mock implements HttpClient {}

void configureFallback() {
  HttpOverrides.global = null;
  HttpOverrides.runZoned(
    () {},
    createHttpClient: (securityContext) => MockHttpClient(),
  );
}
