import 'package:flutter_test/flutter_test.dart';
import 'package:openpagelex/main.dart';

void main() {
  testWidgets('app starts on the start screen', (tester) async {
    await tester.pumpWidget(const OpenPagelexApp());

    expect(find.text('OpenPagelex'), findsOneWidget);
  });
}
