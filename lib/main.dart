import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mypregnant/first_page.dart';
import 'package:mypregnant/view/homepage.dart';
import 'package:mypregnant/view/login_page.dart';
import 'package:mypregnant/view/pregnant/wawasan_ibuhamil.dart';
import 'package:mypregnant/view/tbc/diaggejala.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DiagnosisGejala(),
    );
  }
}
