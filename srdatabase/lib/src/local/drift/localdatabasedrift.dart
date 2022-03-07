import 'dart:ffi';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:iskelet_marketautobot/src/md/strategy/real.dart';
import 'package:sqlite3/open.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../../core/ilocaldatabase.dart';
import 'my_drift_tables.dart';

class LocalDatabaseDrift implements ILocalDatabase {
  // we tell the database where to store the data with this constructor
  late MyDatabase _db;

  bool _opened = false;

  void goToDbViewer(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DriftDbViewer(_db)));
  }

  @override
  Future<void> init() async {
    if (_opened) return;

    if (Platform.isWindows) {
      var fileExtention = 'sqlite3.dll';
      var appdirectory = await getApplicationDocumentsDirectory();
      var subdirectory = p.join(appdirectory.path, 'iskelet_drift');
      var filePath = p.join(subdirectory, fileExtention);

      if (FileSystemEntity.typeSync(filePath) == FileSystemEntityType.notFound) {
        await Directory(subdirectory).create(recursive: true);

        var data = await rootBundle.load('assets/$fileExtention');
        // var data = await rootBundle.load('packages/iskelet_moor/assets/$fileExtention');
        List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
        await File(filePath).writeAsBytes(bytes);
      }

      open.overrideFor(OperatingSystem.windows, () => DynamicLibrary.open(filePath));
      _db = MyDatabase();
      _opened = true;
    }
  }

  @override
  Future<List<MdStrategyReal>> getRealStrategies() {
    // TODO: implement getRealStrategies
    throw UnimplementedError();
  }
}
