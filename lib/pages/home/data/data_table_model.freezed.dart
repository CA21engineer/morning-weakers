// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'data_table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DataTableModelTearOff {
  const _$DataTableModelTearOff();

  _DataTableModel call(
      {String iconUrl,
      String displayName,
      List<TechnicalStack> desiredOccupation,
      int workingDays}) {
    return _DataTableModel(
      iconUrl: iconUrl,
      displayName: displayName,
      desiredOccupation: desiredOccupation,
      workingDays: workingDays,
    );
  }
}

// ignore: unused_element
const $DataTableModel = _$DataTableModelTearOff();

mixin _$DataTableModel {
  String get iconUrl;
  String get displayName;
  List<TechnicalStack> get desiredOccupation;
  int get workingDays;

  $DataTableModelCopyWith<DataTableModel> get copyWith;
}

abstract class $DataTableModelCopyWith<$Res> {
  factory $DataTableModelCopyWith(
          DataTableModel value, $Res Function(DataTableModel) then) =
      _$DataTableModelCopyWithImpl<$Res>;
  $Res call(
      {String iconUrl,
      String displayName,
      List<TechnicalStack> desiredOccupation,
      int workingDays});
}

class _$DataTableModelCopyWithImpl<$Res>
    implements $DataTableModelCopyWith<$Res> {
  _$DataTableModelCopyWithImpl(this._value, this._then);

  final DataTableModel _value;
  // ignore: unused_field
  final $Res Function(DataTableModel) _then;

  @override
  $Res call({
    Object iconUrl = freezed,
    Object displayName = freezed,
    Object desiredOccupation = freezed,
    Object workingDays = freezed,
  }) {
    return _then(_value.copyWith(
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      desiredOccupation: desiredOccupation == freezed
          ? _value.desiredOccupation
          : desiredOccupation as List<TechnicalStack>,
      workingDays:
          workingDays == freezed ? _value.workingDays : workingDays as int,
    ));
  }
}

abstract class _$DataTableModelCopyWith<$Res>
    implements $DataTableModelCopyWith<$Res> {
  factory _$DataTableModelCopyWith(
          _DataTableModel value, $Res Function(_DataTableModel) then) =
      __$DataTableModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String iconUrl,
      String displayName,
      List<TechnicalStack> desiredOccupation,
      int workingDays});
}

class __$DataTableModelCopyWithImpl<$Res>
    extends _$DataTableModelCopyWithImpl<$Res>
    implements _$DataTableModelCopyWith<$Res> {
  __$DataTableModelCopyWithImpl(
      _DataTableModel _value, $Res Function(_DataTableModel) _then)
      : super(_value, (v) => _then(v as _DataTableModel));

  @override
  _DataTableModel get _value => super._value as _DataTableModel;

  @override
  $Res call({
    Object iconUrl = freezed,
    Object displayName = freezed,
    Object desiredOccupation = freezed,
    Object workingDays = freezed,
  }) {
    return _then(_DataTableModel(
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      desiredOccupation: desiredOccupation == freezed
          ? _value.desiredOccupation
          : desiredOccupation as List<TechnicalStack>,
      workingDays:
          workingDays == freezed ? _value.workingDays : workingDays as int,
    ));
  }
}

class _$_DataTableModel
    with DiagnosticableTreeMixin
    implements _DataTableModel {
  const _$_DataTableModel(
      {this.iconUrl,
      this.displayName,
      this.desiredOccupation,
      this.workingDays});

  @override
  final String iconUrl;
  @override
  final String displayName;
  @override
  final List<TechnicalStack> desiredOccupation;
  @override
  final int workingDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataTableModel(iconUrl: $iconUrl, displayName: $displayName, desiredOccupation: $desiredOccupation, workingDays: $workingDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataTableModel'))
      ..add(DiagnosticsProperty('iconUrl', iconUrl))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('desiredOccupation', desiredOccupation))
      ..add(DiagnosticsProperty('workingDays', workingDays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataTableModel &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.desiredOccupation, desiredOccupation) ||
                const DeepCollectionEquality()
                    .equals(other.desiredOccupation, desiredOccupation)) &&
            (identical(other.workingDays, workingDays) ||
                const DeepCollectionEquality()
                    .equals(other.workingDays, workingDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(desiredOccupation) ^
      const DeepCollectionEquality().hash(workingDays);

  @override
  _$DataTableModelCopyWith<_DataTableModel> get copyWith =>
      __$DataTableModelCopyWithImpl<_DataTableModel>(this, _$identity);
}

abstract class _DataTableModel implements DataTableModel {
  const factory _DataTableModel(
      {String iconUrl,
      String displayName,
      List<TechnicalStack> desiredOccupation,
      int workingDays}) = _$_DataTableModel;

  @override
  String get iconUrl;
  @override
  String get displayName;
  @override
  List<TechnicalStack> get desiredOccupation;
  @override
  int get workingDays;
  @override
  _$DataTableModelCopyWith<_DataTableModel> get copyWith;
}
