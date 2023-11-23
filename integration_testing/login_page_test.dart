import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mypregnant/view/homepage.dart';
import 'package:mypregnant/view/login_page.dart'; // Pastikan import path sesuai dengan struktur proyek Anda

void main() {
  testWidgets('Login Page UI Test', (WidgetTester tester) async {
    // Build our LoginPage widget.
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Test Widgets
    expect(find.text('Welcome back'), findsOneWidget);
    expect(find.text('Login to your account'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
  });

  testWidgets('Login Process Test', (WidgetTester tester) async {
    // Build our LoginPage widget.
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Simulate entering text into the email and password fields
    await tester.enterText(find.byKey(ValueKey('email_field')), 'nabila@gmail.com');
    await tester.enterText(find.byKey(ValueKey('password_field')), '12345');

    // Tap the login button.
    await tester.tap(find.byType(ElevatedButton));

    // Wait for the dialog to appear.
    await tester.pump();

    // Expectation after successful login
    expect(find.text('Login Successful'), findsOneWidget);
    expect(find.text('You have been successfully login.'), findsOneWidget);

    // Ensure navigation to HomePage after successful login
    expect(find.byType(HomePage), findsOneWidget);
  });
}
