import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

part 'data_table_model.freezed.dart';

@freezed
abstract class DataTableModel with _$DataTableModel {
  const factory DataTableModel({
    String iconUrl,
    String displayName,
    List<TechnicalStack> desiredOccupation,
    int workingDays,
  }) = _DataTableModel;
}
