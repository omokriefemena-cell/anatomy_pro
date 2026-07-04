import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:anatomy_pro/main.dart';

void main() {
  testWidgets('Anatomy Pro loads successfully', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const AnatomyProApp());

    // Verify MaterialApp exists
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify the splash screen loads
    expect(find.text('Anatomy Pro'), findsOneWidget);
  });
}
