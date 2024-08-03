import "package:flutter_test/flutter_test.dart";
import "package:cubik/app.dart";

// Ensure app launches correctly
void main() {
  testWidgets("", (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(findsWidgets, findsAny);
  });
}
