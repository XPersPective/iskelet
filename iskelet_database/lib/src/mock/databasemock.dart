import '../core/idatabase.dart';

class DatabaseMock implements IDatabase {
  @override
  Future<void> init() => Future.value();
}
