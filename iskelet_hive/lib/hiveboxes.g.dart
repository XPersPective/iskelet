// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveboxes.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveEntityAdapter extends TypeAdapter<HiveEntity> {
  @override
  final int typeId = 0;

  @override
  HiveEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveEntity(
      tableName: fields[0] as String,
      groupId: fields[1] as int?,
      data: (fields[2] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, HiveEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.tableName)
      ..writeByte(1)
      ..write(obj.groupId)
      ..writeByte(2)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
