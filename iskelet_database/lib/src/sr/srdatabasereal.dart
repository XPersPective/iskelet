 
import '../core/ilocaldatabase.dart';
import '../core/iremotedatabase.dart';
import '../core/isrdatabase.dart';

class SrDatabaseReal extends ISrDatabase {
  SrDatabaseReal(this.local, this.remote);

  final IlocalDatabase local;
  final IRemoteDatabase remote;

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }
 
}
