library srdatabase;
import 'src/core/idatabase.dart';
export 'src/ex.dart';

class SrDatabase implements ICoreDatabase {
  SrDatabase(IDatabase database) : _db = database;

  final IDatabase _db;

  @override
  Future<void> init() async {
    await _db.init();
  }
}
