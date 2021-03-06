import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morning_weakers/models/models.dart';

class LinkConverter implements JsonConverter<Link, Map<String, dynamic>> {
  const LinkConverter();

  @override
  Link fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return Link.fromJson(json);
    } else {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(Link link) => link?.toJson();
}
