import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mypregnant/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mypregnant/view/profile.dart';

void main() {
  group('UserModel Unit Test', () {
    late UserModel userModel;

    setUp(() {
      userModel = UserModel(
        name: 'dhipa',
        email: 'dhipa@gmail.com',
        Uid: 'qNe05Q4PiOekIuLR3wS8K3hTVBt2',
      );
    });

    test('Convert UserModel to Map', () {
      final Map<String, dynamic> userMap = userModel.toMap();

      expect(userMap['name'], 'dhipa');
      expect(userMap['email'], 'dhipa@gmail.com');
      expect(userMap['Uid'], 'qNe05Q4PiOekIuLR3wS8K3hTVBt2');
    });

    test('Create UserModel from Map', () {
      final Map<String, dynamic> userMap = {
        'name': 'dhipa',
        'email': 'dhipa@gmail.com',
        'Uid': 'qNe05Q4PiOekIuLR3wS8K3hTVBt2',
      };

      final UserModel newUserModel = UserModel.fromMap(userMap);

      expect(newUserModel.name, 'dhipa');
      expect(newUserModel.email, 'dhipa@gmail.com');
      expect(newUserModel.Uid, 'qNe05Q4PiOekIuLR3wS8K3hTVBt2');
    });

    test('Convert UserModel to JSON', () {
      final String userJson = userModel.toJson();

      final Map<String, dynamic> userMap = json.decode(userJson);

      expect(userMap['name'], 'dhipa');
      expect(userMap['email'], 'dhipa@gmail.com');
      expect(userMap['Uid'], 'qNe05Q4PiOekIuLR3wS8K3hTVBt2');
    });

    test('Create UserModel from JSON', () {
      final String userJson = '''
        {
          "name": "Emily Johnson",
          "email": "emilyjohnson@example.com",
          "Uid": "5678901234"
        }
      ''';

      final UserModel newUserModel = UserModel.fromJson(userJson);

      expect(newUserModel.name, 'Emily Johnson');
      expect(newUserModel.email, 'emilyjohnson@example.com');
      expect(newUserModel.Uid, '5678901234');
    });

    test('Copy UserModel', () {
      final UserModel copiedUserModel = userModel.copyWith(
        name: 'dhipa',
        email: 'dhipa@gmail.com',
        Uid: 'qNe05Q4PiOekIuLR3wS8K3hTVBt2',
      );

      expect(copiedUserModel.name, 'dhipa');
      expect(copiedUserModel.email, 'dhipa@gmail.com');
      expect(copiedUserModel.Uid, 'qNe05Q4PiOekIuLR3wS8K3hTVBt2');
    });
  });
}
