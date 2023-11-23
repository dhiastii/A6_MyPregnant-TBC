import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart'; // Import the mockito library
import 'package:mypregnant/controller/auth_controller.dart';
import 'package:mypregnant/model/user_model.dart';
import 'package:mypregnant/main.dart' as app;
import 'package:mypregnant/view/register_page.dart';

class MockAuthController extends Mock implements AuthController {} // Create a mock class

void main() {
  testWidgets('Register Page Integration Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: RegisterPage()));

    // Tap on the register button to navigate to the register page
    await tester.tap(find.text('Register'));
    await tester.pumpAndSettle();

    // Verify that we are on the RegisterPage
    expect(find.text('Register'), findsOneWidget);

    // Simulate user input in the text fields
    await tester.enterText(find.byKey(const Key('username_field')), 'dhipa');
    await tester.enterText(find.byKey(const Key('email_field')), 'dhipa@gmail.com');
    await tester.enterText(find.byKey(const Key('password_field')), 'qNe05Q4PiOekIuLR3wS8K3hTVBt2');

    // Create a mock AuthController
    final mockAuthController = MockAuthController();


    when(mockAuthController.registerWithEmailAndPassword('dhipa', 'dhipa@gmail.com', 'qNe05Q4PiOekIuLR3wS8K3hTVBt2'))
        .thenAnswer((_) async => UserModel(name: 'dhipa', email: 'dhipa@gmail.com', Uid: 'qNe05Q4PiOekIuLR3wS8K3hTVBt2'));


    // Verify that the registration button is present
    expect(find.text('Register'), findsOneWidget);

    // Tap on the register button
    await tester.tap(find.text('Register'));
    await tester.pumpAndSettle();

    // Verify that the registration successful dialog is displayed
    expect(find.text('Registration Successful'), findsOneWidget);

    // Tap on the OK button in the dialog
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();

    // Verify that the login page is displayed after successful registration
    expect(find.text('Login'), findsOneWidget);
  });
}
