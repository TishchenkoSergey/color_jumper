import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'package:domain/di/injection.module.dart';

import 'injection.config.dart';

@InjectableInit(
  externalPackageModulesBefore: [
    ExternalModule(DomainPackageModule),
  ],
)
Future<GetIt> configureDependencies() async => GetIt.asNewInstance().init();

@module
abstract class RegisterModule {}
