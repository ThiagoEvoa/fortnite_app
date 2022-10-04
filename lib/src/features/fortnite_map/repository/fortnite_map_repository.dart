import '../model/fortnite_map.dart';

abstract class FortniteMapRepository {
  Future<FortniteMap> retrieveFortniteMap();
}
