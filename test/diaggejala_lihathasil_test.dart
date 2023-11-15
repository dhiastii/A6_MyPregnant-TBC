import 'package:flutter_test/flutter_test.dart';
import 'package:mypregnant/model/diaggejala_model.dart';

void main() {
  group('DiaggejalaModel', () {
    test('fromJson() returns a DiaggejalaModel instance', () {
      final Map<String, dynamic> testData = {
        'diagid': '123',
        'selectedSymptoms': ['Symptom1', 'Symptom2'],
        'diagnosisResult': 'Result',
      };
      final String jsonStr =
          '{"diagid": "123", "selectedSymptoms": ["Symptom1", "Symptom2"], "diagnosisResult": "Result"}';

      final DiaggejalaModel result = DiaggejalaModel.fromMap(testData);

      expect(result.diagid, testData['diagid']);
      expect(result.selectedSymptoms, testData['selectedSymptoms']);
      expect(result.diagnosisResult, testData['diagnosisResult']);

      final DiaggejalaModel fromJsonResult = DiaggejalaModel.fromJson(jsonStr);

      expect(fromJsonResult.diagid, testData['diagid']);
      expect(fromJsonResult.selectedSymptoms, testData['selectedSymptoms']);
      expect(fromJsonResult.diagnosisResult, testData['diagnosisResult']);
    });

    test('toJson() returns a JSON string', () {
      final DiaggejalaModel testModel = DiaggejalaModel(
        diagid: '123',
        selectedSymptoms: ['Symptom1', 'Symptom2'],
        diagnosisResult: 'Result',
      );

      final String result = testModel.toJson();
      final Map<String, dynamic> resultMap =
          DiaggejalaModel.fromMap(testModel.toMap()).toMap();

      expect(resultMap['diagid'], testModel.diagid);
      expect(resultMap['selectedSymptoms'], testModel.selectedSymptoms);
      expect(resultMap['diagnosisResult'], testModel.diagnosisResult);

      expect(result,
          '{"diagid":"123","selectedSymptoms":["Symptom1","Symptom2"],"diagnosisResult":"Result"}');
    });
  });
}
