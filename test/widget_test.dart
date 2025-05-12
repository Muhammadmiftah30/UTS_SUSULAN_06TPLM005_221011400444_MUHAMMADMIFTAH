import 'package:flutter_test/flutter_test.dart';
import 'package:shoes_app/main.dart';

void main() {
  testWidgets('ShoesApp shows app bar title', (WidgetTester tester) async {
    // Build the ShoesApp and trigger a frame.
    await tester.pumpWidget(ShoesApp());

    // Verify that the AppBar contains the title "Shoes Shop".
    expect(find.text('Shoes Shop'), findsOneWidget);
  });
}
