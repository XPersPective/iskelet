library iskelet_database;

export 'src/ex.dart';

import 'src/core/icoredatabase.dart';
import 'src/core/isrdatabase.dart';

class SrDatabase implements ICoreDatabase {
  factory SrDatabase.appInit(ISrDatabase database) => instance = SrDatabase._(database);

  final ISrDatabase _db;

  static late final SrDatabase instance;

  SrDatabase._(ISrDatabase database) : _db = database;

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }
}
