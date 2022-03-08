 
 
import '../core/idatabase.dart';
import '../core/isrdatabase.dart';
import '../mock/databasemock.dart';

class SrDatabaseMock extends ISrDatabase {
  final IDatabase _db = DatabaseMock();

  @override
  Future<void> init() async => await _db.init();
 
}
