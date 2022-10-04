import 'package:fortnite_app/src/features/fortnite_shop/model/fortnite_shop.dart';

abstract class FortniteShopRepository {
  Future<FortniteShop> retrieveFortniteShop();
}
