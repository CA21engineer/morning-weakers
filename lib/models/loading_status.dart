import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'loading_status.freezed.dart';

@freezed
abstract class LoadingStatus<T> with _$LoadingStatus<T> {
  const factory LoadingStatus.success(T value) = Success;
  const factory LoadingStatus.loading() = Loading;
  const factory LoadingStatus.failure(Exception exception) = Failure;
}