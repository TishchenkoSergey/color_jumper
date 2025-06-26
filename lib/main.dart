import 'package:color_jumper/app/app.dart';
import 'package:color_jumper/bootstrap.dart';

void main() {
  bootstrap((result) {
    return App(serviceLocator: result.serviceLocator);
  });
}
