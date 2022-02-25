import 'package:hive/hive.dart';

part 'hivboxes.g.dart';

@HiveType(typeId: 0)
class HiveEntity extends HiveObject {
  
  @HiveField(0)
  final String tableName;

  @HiveField(1)
  int? groupId;

  @HiveField(2)
  Map<String, dynamic> data;

  HiveEntity({
    required this.tableName,
    this.groupId,
    required this.data,
  });

  @override
  String toString() => 'HiveEntity(tableName: $tableName, groupId: $groupId, data: $data)';
}

