// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'technical_stack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TechnicalStack _$TechnicalStackFromJson(Map<String, dynamic> json) {
  return _TechnicalStack.fromJson(json);
}

class _$TechnicalStackTearOff {
  const _$TechnicalStackTearOff();

  _TechnicalStack call(
      {@required String id,
      @required Stack stack,
      @required List<dynamic> language,
      @required Proficiency proficiency,
      int priority}) {
    return _TechnicalStack(
      id: id,
      stack: stack,
      language: language,
      proficiency: proficiency,
      priority: priority,
    );
  }
}

// ignore: unused_element
const $TechnicalStack = _$TechnicalStackTearOff();

mixin _$TechnicalStack {
  String get id;
  Stack get stack;
  List<dynamic> get language;
  Proficiency get proficiency;
  int get priority;

  Map<String, dynamic> toJson();
  $TechnicalStackCopyWith<TechnicalStack> get copyWith;
}

abstract class $TechnicalStackCopyWith<$Res> {
  factory $TechnicalStackCopyWith(
          TechnicalStack value, $Res Function(TechnicalStack) then) =
      _$TechnicalStackCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Stack stack,
      List<dynamic> language,
      Proficiency proficiency,
      int priority});
}

class _$TechnicalStackCopyWithImpl<$Res>
    implements $TechnicalStackCopyWith<$Res> {
  _$TechnicalStackCopyWithImpl(this._value, this._then);

  final TechnicalStack _value;
  // ignore: unused_field
  final $Res Function(TechnicalStack) _then;

  @override
  $Res call({
    Object id = freezed,
    Object stack = freezed,
    Object language = freezed,
    Object proficiency = freezed,
    Object priority = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      stack: stack == freezed ? _value.stack : stack as Stack,
      language:
          language == freezed ? _value.language : language as List<dynamic>,
      proficiency: proficiency == freezed
          ? _value.proficiency
          : proficiency as Proficiency,
      priority: priority == freezed ? _value.priority : priority as int,
    ));
  }
}

abstract class _$TechnicalStackCopyWith<$Res>
    implements $TechnicalStackCopyWith<$Res> {
  factory _$TechnicalStackCopyWith(
          _TechnicalStack value, $Res Function(_TechnicalStack) then) =
      __$TechnicalStackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Stack stack,
      List<dynamic> language,
      Proficiency proficiency,
      int priority});
}

class __$TechnicalStackCopyWithImpl<$Res>
    extends _$TechnicalStackCopyWithImpl<$Res>
    implements _$TechnicalStackCopyWith<$Res> {
  __$TechnicalStackCopyWithImpl(
      _TechnicalStack _value, $Res Function(_TechnicalStack) _then)
      : super(_value, (v) => _then(v as _TechnicalStack));

  @override
  _TechnicalStack get _value => super._value as _TechnicalStack;

  @override
  $Res call({
    Object id = freezed,
    Object stack = freezed,
    Object language = freezed,
    Object proficiency = freezed,
    Object priority = freezed,
  }) {
    return _then(_TechnicalStack(
      id: id == freezed ? _value.id : id as String,
      stack: stack == freezed ? _value.stack : stack as Stack,
      language:
          language == freezed ? _value.language : language as List<dynamic>,
      proficiency: proficiency == freezed
          ? _value.proficiency
          : proficiency as Proficiency,
      priority: priority == freezed ? _value.priority : priority as int,
    ));
  }
}

@JsonSerializable()
class _$_TechnicalStack
    with DiagnosticableTreeMixin
    implements _TechnicalStack {
  const _$_TechnicalStack(
      {@required this.id,
      @required this.stack,
      @required this.language,
      @required this.proficiency,
      this.priority})
      : assert(id != null),
        assert(stack != null),
        assert(language != null),
        assert(proficiency != null);

  factory _$_TechnicalStack.fromJson(Map<String, dynamic> json) =>
      _$_$_TechnicalStackFromJson(json);

  @override
  final String id;
  @override
  final Stack stack;
  @override
  final List<dynamic> language;
  @override
  final Proficiency proficiency;
  @override
  final int priority;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TechnicalStack(id: $id, stack: $stack, language: $language, proficiency: $proficiency, priority: $priority)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TechnicalStack'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('stack', stack))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('proficiency', proficiency))
      ..add(DiagnosticsProperty('priority', priority));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TechnicalStack &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.stack, stack) ||
                const DeepCollectionEquality().equals(other.stack, stack)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.proficiency, proficiency) ||
                const DeepCollectionEquality()
                    .equals(other.proficiency, proficiency)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(stack) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(proficiency) ^
      const DeepCollectionEquality().hash(priority);

  @override
  _$TechnicalStackCopyWith<_TechnicalStack> get copyWith =>
      __$TechnicalStackCopyWithImpl<_TechnicalStack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TechnicalStackToJson(this);
  }
}

abstract class _TechnicalStack implements TechnicalStack {
  const factory _TechnicalStack(
      {@required String id,
      @required Stack stack,
      @required List<dynamic> language,
      @required Proficiency proficiency,
      int priority}) = _$_TechnicalStack;

  factory _TechnicalStack.fromJson(Map<String, dynamic> json) =
      _$_TechnicalStack.fromJson;

  @override
  String get id;
  @override
  Stack get stack;
  @override
  List<dynamic> get language;
  @override
  Proficiency get proficiency;
  @override
  int get priority;
  @override
  _$TechnicalStackCopyWith<_TechnicalStack> get copyWith;
}
