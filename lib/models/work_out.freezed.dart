// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_out.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkOuts _$WorkOutsFromJson(Map<String, dynamic> json) {
  return _WorkOuts.fromJson(json);
}

/// @nodoc
mixin _$WorkOuts {
  List<WorkOut> get workOutsVar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkOutsCopyWith<WorkOuts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkOutsCopyWith<$Res> {
  factory $WorkOutsCopyWith(WorkOuts value, $Res Function(WorkOuts) then) =
      _$WorkOutsCopyWithImpl<$Res, WorkOuts>;
  @useResult
  $Res call({List<WorkOut> workOutsVar});
}

/// @nodoc
class _$WorkOutsCopyWithImpl<$Res, $Val extends WorkOuts>
    implements $WorkOutsCopyWith<$Res> {
  _$WorkOutsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workOutsVar = null,
  }) {
    return _then(_value.copyWith(
      workOutsVar: null == workOutsVar
          ? _value.workOutsVar
          : workOutsVar // ignore: cast_nullable_to_non_nullable
              as List<WorkOut>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkOutsCopyWith<$Res> implements $WorkOutsCopyWith<$Res> {
  factory _$$_WorkOutsCopyWith(
          _$_WorkOuts value, $Res Function(_$_WorkOuts) then) =
      __$$_WorkOutsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkOut> workOutsVar});
}

/// @nodoc
class __$$_WorkOutsCopyWithImpl<$Res>
    extends _$WorkOutsCopyWithImpl<$Res, _$_WorkOuts>
    implements _$$_WorkOutsCopyWith<$Res> {
  __$$_WorkOutsCopyWithImpl(
      _$_WorkOuts _value, $Res Function(_$_WorkOuts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workOutsVar = null,
  }) {
    return _then(_$_WorkOuts(
      workOutsVar: null == workOutsVar
          ? _value._workOutsVar
          : workOutsVar // ignore: cast_nullable_to_non_nullable
              as List<WorkOut>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkOuts implements _WorkOuts {
  const _$_WorkOuts({required final List<WorkOut> workOutsVar})
      : _workOutsVar = workOutsVar;

  factory _$_WorkOuts.fromJson(Map<String, dynamic> json) =>
      _$$_WorkOutsFromJson(json);

  final List<WorkOut> _workOutsVar;
  @override
  List<WorkOut> get workOutsVar {
    if (_workOutsVar is EqualUnmodifiableListView) return _workOutsVar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workOutsVar);
  }

  @override
  String toString() {
    return 'WorkOuts(workOutsVar: $workOutsVar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkOuts &&
            const DeepCollectionEquality()
                .equals(other._workOutsVar, _workOutsVar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_workOutsVar));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkOutsCopyWith<_$_WorkOuts> get copyWith =>
      __$$_WorkOutsCopyWithImpl<_$_WorkOuts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkOutsToJson(
      this,
    );
  }
}

abstract class _WorkOuts implements WorkOuts {
  const factory _WorkOuts({required final List<WorkOut> workOutsVar}) =
      _$_WorkOuts;

  factory _WorkOuts.fromJson(Map<String, dynamic> json) = _$_WorkOuts.fromJson;

  @override
  List<WorkOut> get workOutsVar;
  @override
  @JsonKey(ignore: true)
  _$$_WorkOutsCopyWith<_$_WorkOuts> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkOut _$WorkOutFromJson(Map<String, dynamic> json) {
  return _WorkOut.fromJson(json);
}

/// @nodoc
mixin _$WorkOut {
  WorkOutTypes get workoutName => throw _privateConstructorUsedError;
  List<Count> get warmupRows => throw _privateConstructorUsedError;
  List<Count> get setRows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkOutCopyWith<WorkOut> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkOutCopyWith<$Res> {
  factory $WorkOutCopyWith(WorkOut value, $Res Function(WorkOut) then) =
      _$WorkOutCopyWithImpl<$Res, WorkOut>;
  @useResult
  $Res call(
      {WorkOutTypes workoutName, List<Count> warmupRows, List<Count> setRows});
}

/// @nodoc
class _$WorkOutCopyWithImpl<$Res, $Val extends WorkOut>
    implements $WorkOutCopyWith<$Res> {
  _$WorkOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutName = null,
    Object? warmupRows = null,
    Object? setRows = null,
  }) {
    return _then(_value.copyWith(
      workoutName: null == workoutName
          ? _value.workoutName
          : workoutName // ignore: cast_nullable_to_non_nullable
              as WorkOutTypes,
      warmupRows: null == warmupRows
          ? _value.warmupRows
          : warmupRows // ignore: cast_nullable_to_non_nullable
              as List<Count>,
      setRows: null == setRows
          ? _value.setRows
          : setRows // ignore: cast_nullable_to_non_nullable
              as List<Count>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkOutCopyWith<$Res> implements $WorkOutCopyWith<$Res> {
  factory _$$_WorkOutCopyWith(
          _$_WorkOut value, $Res Function(_$_WorkOut) then) =
      __$$_WorkOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkOutTypes workoutName, List<Count> warmupRows, List<Count> setRows});
}

/// @nodoc
class __$$_WorkOutCopyWithImpl<$Res>
    extends _$WorkOutCopyWithImpl<$Res, _$_WorkOut>
    implements _$$_WorkOutCopyWith<$Res> {
  __$$_WorkOutCopyWithImpl(_$_WorkOut _value, $Res Function(_$_WorkOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutName = null,
    Object? warmupRows = null,
    Object? setRows = null,
  }) {
    return _then(_$_WorkOut(
      workoutName: null == workoutName
          ? _value.workoutName
          : workoutName // ignore: cast_nullable_to_non_nullable
              as WorkOutTypes,
      warmupRows: null == warmupRows
          ? _value._warmupRows
          : warmupRows // ignore: cast_nullable_to_non_nullable
              as List<Count>,
      setRows: null == setRows
          ? _value._setRows
          : setRows // ignore: cast_nullable_to_non_nullable
              as List<Count>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkOut implements _WorkOut {
  const _$_WorkOut(
      {required this.workoutName,
      required final List<Count> warmupRows,
      required final List<Count> setRows})
      : _warmupRows = warmupRows,
        _setRows = setRows;

  factory _$_WorkOut.fromJson(Map<String, dynamic> json) =>
      _$$_WorkOutFromJson(json);

  @override
  final WorkOutTypes workoutName;
  final List<Count> _warmupRows;
  @override
  List<Count> get warmupRows {
    if (_warmupRows is EqualUnmodifiableListView) return _warmupRows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warmupRows);
  }

  final List<Count> _setRows;
  @override
  List<Count> get setRows {
    if (_setRows is EqualUnmodifiableListView) return _setRows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_setRows);
  }

  @override
  String toString() {
    return 'WorkOut(workoutName: $workoutName, warmupRows: $warmupRows, setRows: $setRows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkOut &&
            (identical(other.workoutName, workoutName) ||
                other.workoutName == workoutName) &&
            const DeepCollectionEquality()
                .equals(other._warmupRows, _warmupRows) &&
            const DeepCollectionEquality().equals(other._setRows, _setRows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      workoutName,
      const DeepCollectionEquality().hash(_warmupRows),
      const DeepCollectionEquality().hash(_setRows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkOutCopyWith<_$_WorkOut> get copyWith =>
      __$$_WorkOutCopyWithImpl<_$_WorkOut>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkOutToJson(
      this,
    );
  }
}

abstract class _WorkOut implements WorkOut {
  const factory _WorkOut(
      {required final WorkOutTypes workoutName,
      required final List<Count> warmupRows,
      required final List<Count> setRows}) = _$_WorkOut;

  factory _WorkOut.fromJson(Map<String, dynamic> json) = _$_WorkOut.fromJson;

  @override
  WorkOutTypes get workoutName;
  @override
  List<Count> get warmupRows;
  @override
  List<Count> get setRows;
  @override
  @JsonKey(ignore: true)
  _$$_WorkOutCopyWith<_$_WorkOut> get copyWith =>
      throw _privateConstructorUsedError;
}

Count _$CountFromJson(Map<String, dynamic> json) {
  return _Count.fromJson(json);
}

/// @nodoc
mixin _$Count {
  int get weight => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountCopyWith<Count> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res, Count>;
  @useResult
  $Res call({int weight, int reps});
}

/// @nodoc
class _$CountCopyWithImpl<$Res, $Val extends Count>
    implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? reps = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$$_CountCopyWith(_$_Count value, $Res Function(_$_Count) then) =
      __$$_CountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int weight, int reps});
}

/// @nodoc
class __$$_CountCopyWithImpl<$Res> extends _$CountCopyWithImpl<$Res, _$_Count>
    implements _$$_CountCopyWith<$Res> {
  __$$_CountCopyWithImpl(_$_Count _value, $Res Function(_$_Count) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? reps = null,
  }) {
    return _then(_$_Count(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Count implements _Count {
  const _$_Count({required this.weight, required this.reps});

  factory _$_Count.fromJson(Map<String, dynamic> json) =>
      _$$_CountFromJson(json);

  @override
  final int weight;
  @override
  final int reps;

  @override
  String toString() {
    return 'Count(weight: $weight, reps: $reps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Count &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.reps, reps) || other.reps == reps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weight, reps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountCopyWith<_$_Count> get copyWith =>
      __$$_CountCopyWithImpl<_$_Count>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountToJson(
      this,
    );
  }
}

abstract class _Count implements Count {
  const factory _Count({required final int weight, required final int reps}) =
      _$_Count;

  factory _Count.fromJson(Map<String, dynamic> json) = _$_Count.fromJson;

  @override
  int get weight;
  @override
  int get reps;
  @override
  @JsonKey(ignore: true)
  _$$_CountCopyWith<_$_Count> get copyWith =>
      throw _privateConstructorUsedError;
}
