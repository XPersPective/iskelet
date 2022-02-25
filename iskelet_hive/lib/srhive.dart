// ignore_for_file: constant_identifier_names

library iskelet_hive;

export 'hiveboxes.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'hiveboxes.dart';

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
