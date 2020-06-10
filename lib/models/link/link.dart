import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link.freezed.dart';

part 'link.g.dart';

@freezed
abstract class Link with _$Link {
  const factory Link({
    @required String id,
    @required String title,
    @required String url,
    @required @JsonKey(name: 'icon_url') String iconUrl,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
