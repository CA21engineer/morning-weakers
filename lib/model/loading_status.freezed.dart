// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'loading_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoadingStatusTearOff {
  const _$LoadingStatusTearOff();

  Success<T> success<T>(T value) {
    return Success<T>(
      value,
    );
  }

  Loading<T> loading<T>() {
    return Loading<T>();
  }

  Failure<T> failure<T>(Exception exception) {
    return Failure<T>(
      exception,
    );
  }
}

// ignore: unused_element
const $LoadingStatus = _$LoadingStatusTearOff();

mixin _$LoadingStatus<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T value),
    @required Result loading(),
    @required Result failure(Exception exception),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T value),
    Result loading(),
    Result failure(Exception exception),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result failure(Failure<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result failure(Failure<T> value),
    @required Result orElse(),
  });
}

abstract class $LoadingStatusCopyWith<T, $Res> {
  factory $LoadingStatusCopyWith(
          LoadingStatus<T> value, $Res Function(LoadingStatus<T>) then) =
      _$LoadingStatusCopyWithImpl<T, $Res>;
}

class _$LoadingStatusCopyWithImpl<T, $Res>
    implements $LoadingStatusCopyWith<T, $Res> {
  _$LoadingStatusCopyWithImpl(this._value, this._then);

  final LoadingStatus<T> _value;
  // ignore: unused_field
  final $Res Function(LoadingStatus<T>) _then;
}

abstract class $SuccessCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) then) =
      _$SuccessCopyWithImpl<T, $Res>;
  $Res call({T value});
}

class _$SuccessCopyWithImpl<T, $Res>
    extends _$LoadingStatusCopyWithImpl<T, $Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(Success<T> _value, $Res Function(Success<T>) _then)
      : super(_value, (v) => _then(v as Success<T>));

  @override
  Success<T> get _value => super._value as Success<T>;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(Success<T>(
      value == freezed ? _value.value : value as T,
    ));
  }
}

class _$Success<T> with DiagnosticableTreeMixin implements Success<T> {
  const _$Success(this.value) : assert(value != null);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadingStatus<$T>.success(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoadingStatus<$T>.success'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T value),
    @required Result loading(),
    @required Result failure(Exception exception),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(failure != null);
    return success(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T value),
    Result loading(),
    Result failure(Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result failure(Failure<T> value),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result failure(Failure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements LoadingStatus<T> {
  const factory Success(T value) = _$Success<T>;

  T get value;
  $SuccessCopyWith<T, Success<T>> get copyWith;
}

abstract class $LoadingCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

class _$LoadingCopyWithImpl<T, $Res>
    extends _$LoadingStatusCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

class _$Loading<T> with DiagnosticableTreeMixin implements Loading<T> {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadingStatus<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoadingStatus<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T value),
    @required Result loading(),
    @required Result failure(Exception exception),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T value),
    Result loading(),
    Result failure(Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result failure(Failure<T> value),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result failure(Failure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements LoadingStatus<T> {
  const factory Loading() = _$Loading<T>;
}

abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res>;
  $Res call({Exception exception});
}

class _$FailureCopyWithImpl<T, $Res>
    extends _$LoadingStatusCopyWithImpl<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(Failure<T> _value, $Res Function(Failure<T>) _then)
      : super(_value, (v) => _then(v as Failure<T>));

  @override
  Failure<T> get _value => super._value as Failure<T>;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(Failure<T>(
      exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

class _$Failure<T> with DiagnosticableTreeMixin implements Failure<T> {
  const _$Failure(this.exception) : assert(exception != null);

  @override
  final Exception exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadingStatus<$T>.failure(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoadingStatus<$T>.failure'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure<T> &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @override
  $FailureCopyWith<T, Failure<T>> get copyWith =>
      _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T value),
    @required Result loading(),
    @required Result failure(Exception exception),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(failure != null);
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T value),
    Result loading(),
    Result failure(Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result loading(Loading<T> value),
    @required Result failure(Failure<T> value),
  }) {
    assert(success != null);
    assert(loading != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result loading(Loading<T> value),
    Result failure(Failure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements LoadingStatus<T> {
  const factory Failure(Exception exception) = _$Failure<T>;

  Exception get exception;
  $FailureCopyWith<T, Failure<T>> get copyWith;
}
