import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
part 'my_drift_tables.g.dart';

// flutter packages pub run build_runner build
class TbMdMyOrders extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get symbol => text()();
  TextColumn get origClientOrderId => text()();
  IntColumn get orderId => integer()();
  IntColumn get orderListId => integer()();
  TextColumn get clientOrderId => text()();
  RealColumn get price => real()();
  RealColumn get origQty => real()();
  RealColumn get executedQty => real()();
  RealColumn get cummulativeQuoteQty => real()();
  TextColumn get status => text()();
  TextColumn get timeInForce => text()();
  TextColumn get type => text()();
  TextColumn get side => text()();
  DateTimeColumn get date => dateTime()();
  RealColumn get change => real()();
  RealColumn get changePercent => real()();
  IntColumn get strategyId => integer().nullable()();
}

class TbMdRadars extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get symbol => text()();
  TextColumn get acChartInterval => text()();
  TextColumn get args => text()();
  IntColumn get strategyId => integer().nullable()();
}

@DataClassName("TbMdStrategy")
class TbMdStrategies extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get symbol => text()();
  RealColumn get stopLossPercent => real()();
  RealColumn get takeProfitPercent => real()();
  RealColumn get initialBaseQty => real()();
  RealColumn get initialQuoteQty => real()();
  RealColumn get currentBaseQty => real()();
  RealColumn get currentQuoteQty => real()();
  BoolColumn get isRealTrade => boolean()();
  BoolColumn get isBackTest => boolean()();
  BoolColumn get isArchive => boolean()();
  IntColumn get startDate => integer().nullable()();
  IntColumn get endDate => integer().nullable()();
}

class TbMdKlines extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();
  TextColumn get interval => text()();
  IntColumn get openTime => integer()();
  IntColumn get closeTime => integer()();
  RealColumn get openPrice => real()();
  RealColumn get closePrice => real()();
  RealColumn get highPrice => real()();
  RealColumn get lowPrice => real()();
  RealColumn get baseAssetVolume => real()();
  RealColumn get quoteAssetVolume => real()();
  IntColumn get numberOfTrades => integer()();
  RealColumn get takerBaseBuyVolume => real()();
  RealColumn get takerQuoteBuyVolume => real()();
  RealColumn get ignore => real()();
  IntColumn get tbMdHistoricalId => integer()();
}

class TbMdHistoricalMdKlines extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();
  TextColumn get interval => text()();
  TextColumn get historicalInterval => text()();
  DateTimeColumn get date => dateTime()();
}

class TbMdMarketApiKeys extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get realPublicApiKey => text().nullable()();
  TextColumn get realSecretApiKey => text().nullable()();
  TextColumn get testPublicApiKey => text().nullable()();
  TextColumn get testSecretApiKey => text().nullable()();
  BoolColumn get isTest => boolean()();
}

@DriftDatabase(
    tables: [TbMdMyOrders, TbMdRadars, TbMdStrategies, TbMdKlines, TbMdHistoricalMdKlines, TbMdMarketApiKeys])
class MyDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  MyDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    var fileExtention = 'db.sqlite';
    var appdirectory = await getApplicationDocumentsDirectory();
    var subdirectory = p.join(appdirectory.path, 'iskelet_drift');
    var filePath = p.join(subdirectory, fileExtention);

    final file = File(filePath);
    return NativeDatabase(file);
  });
}
