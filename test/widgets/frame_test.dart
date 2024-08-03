import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:cubik/widgets/frame.dart";

void main() {
  testWidgets("Framed widget test", (WidgetTester tester) async {
    const key = Key("testChild");

    await tester.pumpWidget(
      MaterialApp(
        home: Frame(
          child: Container(key: key, color: Colors.blue),
        ),
      ),
    );

    expect(find.byType(Scaffold), findsOneWidget);

    expect(find.byType(SafeArea), findsOneWidget);

    expect(find.byType(Scrollbar), findsOneWidget);

    expect(find.byType(SingleChildScrollView), findsOneWidget);

    expect(find.byKey(key), findsOneWidget);
  });
}
