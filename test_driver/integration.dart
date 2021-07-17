import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group("test init integration test success", () {
    late FlutterDriver driver;
    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      driver.close();
    });

    test("", () async {
      await driver.runUnsynchronized(() async {
        // First, tap the button.
        // await driver.tap(buttonFinder);

        // Then, verify the counter text is incremented by 1.
        await driver.waitFor(find.byValueKey("login-button"));
      });
    });
  });
}
