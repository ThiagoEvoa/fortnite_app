import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/fortnite_map/model/fortnite_map.dart';
import 'package:fortnite_app/src/features/fortnite_map/repository/fortnite_map_repository.dart';
import 'package:fortnite_app/src/features/fortnite_map/repository/fortnite_map_repository_impl.dart';

final fortniteMapProvider =
    StateNotifierProvider<FortniteMapProvider, AsyncValue<FortniteMap>>(
  (ref) => FortniteMapProvider(ref.watch(fortniteMapRepository)),
);

class FortniteMapProvider extends StateNotifier<AsyncValue<FortniteMap>> {
  final FortniteMapRepository _fortniteMapRepository;

  FortniteMapProvider(this._fortniteMapRepository)
      : super(AsyncValue.data(FortniteMap.initialState()));

  Future<void> retrieveFortniteMap() async {
    try {
      state = const AsyncLoading();
      final fortniteMap = await _fortniteMapRepository.retrieveFortniteMap();
      state = AsyncValue.data(fortniteMap);
    } catch (exception, stackTrace) {
      state = AsyncValue.error(exception, stackTrace);
    }
  }
}
