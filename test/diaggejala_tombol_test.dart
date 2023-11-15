import 'package:flutter_test/flutter_test.dart';
import 'package:mypregnant/model/diaggejala_model.dart';

void main() {
  group('DiaggejalaModel', () {
    test('fromJson() should return a valid DiaggejalaModel', () {
      final Map<String, dynamic> testData = {
        'diagid': '123',
        'selectedSymptoms': ['symptom1', 'symptom2'],
        'diagnosisResult': 'result',
      };

      final String jsonTestData =
          '{"diagid":"123","selectedSymptoms":["symptom1","symptom2"],"diagnosisResult":"result"}';

      final model = DiaggejalaModel.fromMap(testData);

      expect(model.diagid, '123');
      expect(model.selectedSymptoms, ['symptom1', 'symptom2']);
      expect(model.diagnosisResult, 'result');

      final parsedModel = DiaggejalaModel.fromJson(jsonTestData);

      expect(parsedModel.diagid, '123');
      expect(parsedModel.selectedSymptoms, ['symptom1', 'symptom2']);
      expect(parsedModel.diagnosisResult, 'result');
    });

    test('toJson() should return a valid JSON string', () {
      final model = DiaggejalaModel(
        diagid: '123',
        selectedSymptoms: ['symptom1', 'symptom2'],
        diagnosisResult: 'result',
      );

      final jsonString = model.toJson();

      final expectedJsonString =
          '{"diagid":"123","selectedSymptoms":["symptom1","symptom2"],"diagnosisResult":"result"}';

      expect(jsonString, expectedJsonString);
    });
  });
}
