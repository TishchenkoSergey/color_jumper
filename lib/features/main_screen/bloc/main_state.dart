part of 'main_cubit.dart';

/// The state for [MainCubit], representing the current tap count and color data.
@freezed
sealed class MainState with _$MainState {
  const factory MainState({
    @Default(0) int tapCount,
    ColorInfo? colorInfo,
  }) = _MainState;

  const MainState._();
}
