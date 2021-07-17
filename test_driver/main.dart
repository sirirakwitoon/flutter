// @dart = 2.8
import 'package:flutter_driver/driver_extension.dart';
import 'package:myapp/main.dart' as app;

Future<void> main() async {
  enableFlutterDriverExtension();
  app.main();
}
