import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/fortnite_shop.dart';
import '../repository/fortnite_shop_repository.dart';
import '../repository/fortnite_shop_repository_impl.dart';

final fortniteShopProvider =
    StateNotifierProvider<FortniteShopProvider, AsyncValue<FortniteShop>>(
  (ref) => FortniteShopProvider(ref.watch(fortniteShopRepository)),
);

class FortniteShopProvider extends StateNotifier<AsyncValue<FortniteShop>> {
  final FortniteShopRepository _fortniteShopRepository;

  FortniteShopProvider(this._fortniteShopRepository)
      : super(AsyncValue.data(FortniteShop.initialState()));

  Future<void> retrieveFortniteShop() async {
    try {
      state = const AsyncLoading();
      final fortniteShop = await _fortniteShopRepository.retrieveFortniteShop();
      state = AsyncValue.data(fortniteShop);
    } catch (exception, stackTrace) {
      state = AsyncValue.error(exception, stackTrace);
    }
  }
}
