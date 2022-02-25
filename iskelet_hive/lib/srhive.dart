// ignore_for_file: constant_identifier_names

library iskelet_hive;

// import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';

// import 'package:path_provider/path_provider.dart';

// import 'package:path/path.dart' as p;

import 'hivboxes.dart';

// ignore: unused_element
// final _init = SrHive.instance..init();

enum HiveTableShort { ByGroup, ById }
enum HiveTableOrder { ASC, DESC }

class SrHive {
  SrHive._();
  static final SrHive instance = SrHive._();

  static bool _isInit = false;
  Box<HiveEntity>? _boxDB;
  Box<HiveEntity> get _box => _boxDB ??= Hive.box<HiveEntity>('hivedb');
  Box<HiveEntity> get box => _box;

  Future<void> init() async {
    if (_isInit) return;

    await Hive.initFlutter();

    Hive.registerAdapter(HiveEntityAdapter());

    _boxDB = await Hive.openBox<HiveEntity>('hivedb');
    _isInit = true;
  }

  // Future<void> init() async {
  //   // if (_isInit) return;

  //   ///init hiv
  //   //  Directory appDocDir = await getApplicationDocumentsDirectory();
  //   //    Hive.init(appDocDir.path);
  //   Directory appDocDir = await getApplicationDocumentsDirectory();

  //   // SrPath.instance.current.join('packages').join('iskelet_hive').join('assets');
  //   // Hive.init(appDocDir.path);

  //   await Hive.initFlutter(p.join(p.current,'packages', 'iskelet_hive', 'assets'));

  //   Hive.registerAdapter(HiveEntityAdapter());
  //   // await Hive.initFlutter();

  //   // /// open boxes
  //   // if (Hive.isBoxOpen('HiveEntity')) {
  //   //   _box = Hive.box('HiveEntity');
  //   // }

  //   _boxDB = await Hive.openBox<HiveEntity>(
  //     'hivedb',
  //   );
  //   _isInit = true;
  // }

  Future<HiveEntity> write(HiveEntity entity) async {
    if (entity.data['id'] == null) {
      entity.data['id'] = await _box.add(entity);
    } else {
      await _box.putAt(entity.data['id'], entity);
    }
    await entity.save();
    return HiveEntity(
        tableName: entity.tableName,
        groupId: entity.groupId,
        data: entity.data.map((key, value) => MapEntry(key, value)));
  }

  Future<List<HiveEntity>> addAll(List<HiveEntity> entities) async {
    List<HiveEntity> l = [];
    for (var entity in entities) {
      l.add(await write(entity));
    }
    return l;
  }

  Future<void> deleteTable(String tableName) async {
    for (var entity in _box.values) {
      if (entity.tableName == tableName) {
        await entity.delete();
      }
    }
  }

  HiveEntity? getById(int id) {
    var entity = _box.getAt(id);
    if (entity != null) {
      return HiveEntity(
          tableName: entity.tableName,
          groupId: entity.groupId,
          data: entity.data.map((key, value) => MapEntry(key, value)));
    }
    return null;
  }

  List<HiveEntity> getByGroupId(String tableName, int groupId) {
    List<HiveEntity> l = [];
    for (var entity in _box.values) {
      if (entity.tableName == tableName && entity.groupId == groupId) {
        l.add(HiveEntity(
            tableName: entity.tableName,
            groupId: entity.groupId,
            data: entity.data.map((key, value) => MapEntry(key, value))));
      }
    }
    return l;
  }

  List<HiveEntity> _getTable(String tableName,
      {HiveTableOrder orderBy = HiveTableOrder.ASC, HiveTableShort short = HiveTableShort.ById}) {
    List<HiveEntity> l = [];
    for (var entity in _box.values) {
      if (entity.tableName == tableName) {
        l.add(HiveEntity(
            tableName: entity.tableName,
            groupId: entity.groupId,
            data: entity.data.map((key, value) => MapEntry(key, value))));
      }
    }

    l.sort((prev, next) {
      var p = short == HiveTableShort.ById ? prev.key : prev.groupId;
      var n = short == HiveTableShort.ById ? next.key : next.groupId;
      if (orderBy == HiveTableOrder.ASC) {
        return p < n ? p : n;
      } else {
        return p > n ? p : n;
      }
    });

    return l;
  }

  List<HiveEntity> getTable(String tableName, {HiveTableOrder orderBy = HiveTableOrder.ASC}) =>
      _getTable(tableName, orderBy: orderBy, short: HiveTableShort.ByGroup);

  List<List<HiveEntity>> getGoups(String tableName, {HiveTableOrder orderBy = HiveTableOrder.ASC}) {
    List<int> groupIds = getGroupIds(tableName, orderBy: orderBy);

    return groupIds.map((groupId) => getByGroupId(tableName, groupId)).toList();
    // List<List<HiveEntity>> l = [];
    // for (var groupId in groupIds) {
    //   var entities = getByGroupId(tableName, groupId);
    //   l.add(entities);
    // }
  }

  List<int> getGroupIds(String tableName, {HiveTableOrder orderBy = HiveTableOrder.ASC}) {
    List<int> l = [];
    for (var entity in _box.values) {
      if (entity.tableName == tableName && entity.groupId != null) {
        l.add(entity.groupId!);
      }
    }

    l.sort((p, n) {
      if (orderBy == HiveTableOrder.ASC) {
        return p < n ? p : n;
      } else {
        return p > n ? p : n;
      }
    });

    return l;
  }

  Future<void> deleteByIds(List<int> ids) async => await _box.deleteAll(ids);

  Future<void> deleteById(int id) async => await _box.deleteAt(id);

  Future<int> clearDb() async => await _box.clear();

  bool contains(int index) => _box.containsKey(index);

  Future<void> closeDb() async => await _box.close();
  Future<void> deleteFromDisk() async => await _box.deleteFromDisk();
}

// await Hive.initFlutter(); ilk kez yukle

// var box = Hive.box('myBox');zaten  açılmış olana hemen eriş

// var box = await Hive.openBox('myBox');
// await box.put('hello', 'world');
// await box.close();

// Okuma
// var box = Hive.box('myBox');

// String name = box.get('name');

// DateTime birthday = box.get('birthday');

// flutter packages pub run build_runner build

// void main() async {
//   // Register Adapter
//   Hive.registerAdapter(UserAdapter());

//   var box = await Hive.openBox<User>('userBox');

//   box.put('david', User('David'));
//   box.put('sandy', User('Sandy'));

//   print(box.values);
// }
// jj() {
//   var flutter = [
//     HiveEntity(tableName: chart, groupId: 0, data: {
//       id: 0,
//       name: Candile,
//       showLabels: true,
//       showSelectedValueLine: true,
//       isLine: false,
//       openPriceSupportPeriod: 14,
//       openPriceResistancePeriod: 14,
//       closePriceSupportPeriod: 14,
//       closePriceResistancePeriod: 14,
//       highPriceSupportPeriod: 14,
//       highPriceResistancePeriod: 14,
//       lowPriceSupportPeriod: 14,
//       lowPriceResistancePeriod: 14,
//       openPriceSupportColor: 4294198070,
//       openPriceResistanceColor: 4294198070,
//       closePriceSupportColor: 4294198070,
//       closePriceResistanceColor: 4294198070,
//       highPriceSupportColor: 4294198070,
//       highPriceResistanceColor: 4294198070,
//       lowPriceSupportColor: 4294198070,
//       lowPriceResistanceColor: 4294198070
//     })
//   ];
// }
