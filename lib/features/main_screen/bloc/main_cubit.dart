import 'package:bloc/bloc.dart';
import 'package:color_jumper/models/models.dart';
import 'package:color_jumper/services/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.dart';

part 'main_cubit.freezed.dart';


/// A [MainCubit] that manages tap count and color-related state.
/// It generates a new random color and updates the state each time [changeColor] is called.
class MainCubit extends Cubit<MainState> {
  /// Creates a [MainCubit] with the given [ColorGeneratorService].
  /// Immediately generates the first color on initialization.
  MainCubit(this._colorGeneratorService) : super(const MainState()) {
    changeColor();
  }

  /// Service used for generating random colors and related data.
  final ColorGeneratorService _colorGeneratorService;

  /// Generates a new random color and updates the state.
  void changeColor() {
    final newColorInfo = _colorGeneratorService.generateColorInfo();

    emit(state.copyWith(
      colorInfo: newColorInfo,
      tapCount: state.tapCount + 1,
    ),);
  }
}
