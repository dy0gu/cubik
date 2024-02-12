import "package:flutter_test/flutter_test.dart";
import "package:cubik/app.dart";

// test app launch
void main() {
  testWidgets("", (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(findsWidgets, findsAny);
  });
}
