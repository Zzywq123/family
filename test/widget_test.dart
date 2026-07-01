import 'package:family/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('defaults to home and switches pages', (tester) async {
    await tester.pumpWidget(const FamilyApp());

    expect(find.text('首页'), findsNWidgets(2));

    await tester.tap(find.byIcon(Icons.notifications_outlined));
    await tester.pump();

    expect(find.text('提醒'), findsNWidgets(2));
  });
}
