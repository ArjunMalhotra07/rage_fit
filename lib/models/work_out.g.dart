// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkOuts _$$_WorkOutsFromJson(Map<String, dynamic> json) => _$_WorkOuts(
      workOutsVar: (json['workOutsVar'] as List<dynamic>)
          .map((e) => WorkOut.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkOutsToJson(_$_WorkOuts instance) =>
    <String, dynamic>{
      'workOutsVar': instance.workOutsVar,
    };

_$_WorkOut _$$_WorkOutFromJson(Map<String, dynamic> json) => _$_WorkOut(
      workoutName: $enumDecode(_$WorkOutTypesEnumMap, json['workoutName']),
      warmupRows: (json['warmupRows'] as List<dynamic>)
          .map((e) => Count.fromJson(e as Map<String, dynamic>))
          .toList(),
      setRows: (json['setRows'] as List<dynamic>)
          .map((e) => Count.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkOutToJson(_$_WorkOut instance) =>
    <String, dynamic>{
      'workoutName': _$WorkOutTypesEnumMap[instance.workoutName]!,
      'warmupRows': instance.warmupRows,
      'setRows': instance.setRows,
    };

const _$WorkOutTypesEnumMap = {
  WorkOutTypes.overheadPress: 'overheadPress',
  WorkOutTypes.latPullDown: 'latPullDown',
  WorkOutTypes.benchPress: 'benchPress',
};

_$_Count _$$_CountFromJson(Map<String, dynamic> json) => _$_Count(
      weight: json['weight'] as int,
      reps: json['reps'] as int,
    );

Map<String, dynamic> _$$_CountToJson(_$_Count instance) => <String, dynamic>{
      'weight': instance.weight,
      'reps': instance.reps,
    };
