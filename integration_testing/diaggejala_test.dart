import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mypregnant/main.dart';
import 'package:mypregnant/view/tbc/diaggejala.dart'; // Sesuaikan dengan nama file utama Anda

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  testWidgets('Integration Test - DiagnosisGejala Widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: DiagnosisGejala()));

    // Ensure the initial state of showDiagnosis is false
    expect(find.text('Diagnosis Result'), findsNothing);

    // Tap on the checkbox
    await tester.tap(find.byType(CheckboxListTile).first);
    await tester.pump();

    // Ensure the checkbox is checked
    expect(tester.widget<Checkbox>(find.byType(Checkbox)), findsOneWidget);
    expect(find.text('Lihat Hasil'), findsOneWidget);

    // Tap on 'Lihat Hasil' button
    await tester.tap(find.text('Lihat Hasil'));
    await tester.pumpAndSettle();

    // Ensure the diagnosis result dialog appears
    expect(find.text('Diagnosis Result'), findsOneWidget);
    expect(find.text('Gejala yang dipilih:'), findsOneWidget);
    expect(find.text('Hasil Diagnosis:'), findsOneWidget);
    expect(find.text('Sesak Nafas'),
        findsOneWidget); // Adjust this based on the scenario

    // Close the dialog
    await tester.tap(find.text('Ok'));
    await tester.pumpAndSettle();

    // Ensure the dialog is dismissed
    expect(find.text('Diagnosis Result'), findsNothing);
  });
}
