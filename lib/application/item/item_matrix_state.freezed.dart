// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_matrix_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemMatrixStateTearOff {
  const _$ItemMatrixStateTearOff();

  _ItemMatrixState call(
      {required KtList<Matrix> matrix,
      required bool isLoading,
      required Option<MatrixFailure> failureOption}) {
    return _ItemMatrixState(
      matrix: matrix,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $ItemMatrixState = _$ItemMatrixStateTearOff();

/// @nodoc
mixin _$ItemMatrixState {
  KtList<Matrix> get matrix => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<MatrixFailure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemMatrixStateCopyWith<ItemMatrixState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemMatrixStateCopyWith<$Res> {
  factory $ItemMatrixStateCopyWith(
          ItemMatrixState value, $Res Function(ItemMatrixState) then) =
      _$ItemMatrixStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Matrix> matrix,
      bool isLoading,
      Option<MatrixFailure> failureOption});
}

/// @nodoc
class _$ItemMatrixStateCopyWithImpl<$Res>
    implements $ItemMatrixStateCopyWith<$Res> {
  _$ItemMatrixStateCopyWithImpl(this._value, this._then);

  final ItemMatrixState _value;
  // ignore: unused_field
  final $Res Function(ItemMatrixState) _then;

  @override
  $Res call({
    Object? matrix = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      matrix: matrix == freezed
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as KtList<Matrix>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<MatrixFailure>,
    ));
  }
}

/// @nodoc
abstract class _$ItemMatrixStateCopyWith<$Res>
    implements $ItemMatrixStateCopyWith<$Res> {
  factory _$ItemMatrixStateCopyWith(
          _ItemMatrixState value, $Res Function(_ItemMatrixState) then) =
      __$ItemMatrixStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Matrix> matrix,
      bool isLoading,
      Option<MatrixFailure> failureOption});
}

/// @nodoc
class __$ItemMatrixStateCopyWithImpl<$Res>
    extends _$ItemMatrixStateCopyWithImpl<$Res>
    implements _$ItemMatrixStateCopyWith<$Res> {
  __$ItemMatrixStateCopyWithImpl(
      _ItemMatrixState _value, $Res Function(_ItemMatrixState) _then)
      : super(_value, (v) => _then(v as _ItemMatrixState));

  @override
  _ItemMatrixState get _value => super._value as _ItemMatrixState;

  @override
  $Res call({
    Object? matrix = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_ItemMatrixState(
      matrix: matrix == freezed
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as KtList<Matrix>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<MatrixFailure>,
    ));
  }
}

/// @nodoc
class _$_ItemMatrixState implements _ItemMatrixState {
  const _$_ItemMatrixState(
      {required this.matrix,
      required this.isLoading,
      required this.failureOption});

  @override
  final KtList<Matrix> matrix;
  @override
  final bool isLoading;
  @override
  final Option<MatrixFailure> failureOption;

  @override
  String toString() {
    return 'ItemMatrixState(matrix: $matrix, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemMatrixState &&
            (identical(other.matrix, matrix) ||
                const DeepCollectionEquality().equals(other.matrix, matrix)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(matrix) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failureOption);

  @JsonKey(ignore: true)
  @override
  _$ItemMatrixStateCopyWith<_ItemMatrixState> get copyWith =>
      __$ItemMatrixStateCopyWithImpl<_ItemMatrixState>(this, _$identity);
}

abstract class _ItemMatrixState implements ItemMatrixState {
  const factory _ItemMatrixState(
      {required KtList<Matrix> matrix,
      required bool isLoading,
      required Option<MatrixFailure> failureOption}) = _$_ItemMatrixState;

  @override
  KtList<Matrix> get matrix => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<MatrixFailure> get failureOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemMatrixStateCopyWith<_ItemMatrixState> get copyWith =>
      throw _privateConstructorUsedError;
}
