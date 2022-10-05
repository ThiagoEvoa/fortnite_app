import 'package:fortnite_app/src/features/fortnite_shop/model/model.dart';

abstract class FortniteShopRepository {
  Future<FortniteShop> retrieveFortniteShop();
}
