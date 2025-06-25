import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:color_jumper/di/di.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

/// Custom [BlocObserver] that logs changes and errors in blocs.
class AppBlocObserver extends BlocObserver {
  /// Creates an instance of [AppBlocObserver].
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

/// Holds initialized services for the app.
class BootstrapResult {
  /// Creates a result with the given [serviceLocator].
  BootstrapResult(this.serviceLocator);

  /// Dependency injection container.
  final GetIt serviceLocator;
}

/// Sets up error handling, BLoC observer, DI, and runs the app.
Future<void> bootstrap(FutureOr<Widget> Function(BootstrapResult result) builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  final serviceLocator = await configureDependencies();

  final bootstrapResult = BootstrapResult(serviceLocator);

  runApp(await builder(bootstrapResult));
}
