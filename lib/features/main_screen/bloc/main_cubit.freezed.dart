// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainState {
  int get tapCount;
  ColorInfo? get colorInfo;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainStateCopyWith<MainState> get copyWith =>
      _$MainStateCopyWithImpl<MainState>(this as MainState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainState &&
            (identical(other.tapCount, tapCount) ||
                other.tapCount == tapCount) &&
            (identical(other.colorInfo, colorInfo) ||
                other.colorInfo == colorInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tapCount, colorInfo);

  @override
  String toString() {
    return 'MainState(tapCount: $tapCount, colorInfo: $colorInfo)';
  }
}

/// @nodoc
abstract mixin class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) _then) =
      _$MainStateCopyWithImpl;
  @useResult
  $Res call({int tapCount, ColorInfo? colorInfo});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._self, this._then);

  final MainState _self;
  final $Res Function(MainState) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tapCount = null,
    Object? colorInfo = freezed,
  }) {
    return _then(_self.copyWith(
      tapCount: null == tapCount
          ? _self.tapCount
          : tapCount // ignore: cast_nullable_to_non_nullable
              as int,
      colorInfo: freezed == colorInfo
          ? _self.colorInfo
          : colorInfo // ignore: cast_nullable_to_non_nullable
              as ColorInfo?,
    ));
  }
}

/// @nodoc

class _MainState extends MainState {
  const _MainState({this.tapCount = 0, this.colorInfo}) : super._();

  @override
  @JsonKey()
  final int tapCount;
  @override
  final ColorInfo? colorInfo;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MainStateCopyWith<_MainState> get copyWith =>
      __$MainStateCopyWithImpl<_MainState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainState &&
            (identical(other.tapCount, tapCount) ||
                other.tapCount == tapCount) &&
            (identical(other.colorInfo, colorInfo) ||
                other.colorInfo == colorInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tapCount, colorInfo);

  @override
  String toString() {
    return 'MainState(tapCount: $tapCount, colorInfo: $colorInfo)';
  }
}

/// @nodoc
abstract mixin class _$MainStateCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(
          _MainState value, $Res Function(_MainState) _then) =
      __$MainStateCopyWithImpl;
  @override
  @useResult
  $Res call({int tapCount, ColorInfo? colorInfo});
}

/// @nodoc
class __$MainStateCopyWithImpl<$Res> implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(this._self, this._then);

  final _MainState _self;
  final $Res Function(_MainState) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tapCount = null,
    Object? colorInfo = freezed,
  }) {
    return _then(_MainState(
      tapCount: null == tapCount
          ? _self.tapCount
          : tapCount // ignore: cast_nullable_to_non_nullable
              as int,
      colorInfo: freezed == colorInfo
          ? _self.colorInfo
          : colorInfo // ignore: cast_nullable_to_non_nullable
              as ColorInfo?,
    ));
  }
}

// dart format on
