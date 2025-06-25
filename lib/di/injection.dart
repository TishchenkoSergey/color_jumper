import 'package:color_jumper/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  externalPackageModulesBefore: [],
)
/// Initializes and configures di using `GetIt` and `injectable`.
Future<GetIt> configureDependencies() async => GetIt.asNewInstance().init();

/// A module to register external dependencies for injection.
@module
abstract class RegisterModule {}
