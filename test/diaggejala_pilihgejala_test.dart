import 'package:flutter_test/flutter_test.dart';
import 'package:mypregnant/model/diaggejala_model.dart';

void main() {
  group('DiaggejalaModel', () {
    test('toJson converts DiaggejalaModel to a valid JSON', () {
      final model = DiaggejalaModel(
        diagid: '1',
        selectedSymptoms: ['Fever', 'Cough'],
        diagnosisResult: 'Cold',
      );

      final jsonMap = model.toMap();
      final jsonString = model.toJson();

      expect(jsonString, isNotNull);
      expect(jsonMap['diagid'], equals('1'));
      expect(jsonMap['selectedSymptoms'], equals(['Fever', 'Cough']));
      expect(jsonMap['diagnosisResult'], equals('Cold'));
    });

    test('fromJson creates DiaggejalaModel from a valid JSON string', () {
      final jsonString =
          '{"diagid":"2","selectedSymptoms":["Headache","Sore throat"],"diagnosisResult":"Flu"}';

      final model = DiaggejalaModel.fromJson(jsonString);

      expect(model.diagid, equals('2'));
      expect(model.selectedSymptoms, equals(['Headache', 'Sore throat']));
      expect(model.diagnosisResult, equals('Flu'));
    });
  });
}
