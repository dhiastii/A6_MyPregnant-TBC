import 'package:flutter_test/flutter_test.dart';
import 'package:mypregnant/model/pregnant_model.dart'; // Ganti dengan path yang sesuai

void main() {
  test('Integration Test - Adding Data to PregnantModel', () {
    // Arrange
    final pregnantModel = PregnantModel(
      usiajanin: 'Usia Janin',
      formatDate: 'Formatted Date',
      bbpreg: 'Berat Badan Hamil',
      selectedvalue: 'Selected Value',
      keluhan: 'Keluhan',
      tindakan: 'Tindakan',
    );

    // Act
    final Map<String, dynamic> modelMap = pregnantModel.toMap();
    final String jsonFromModel = pregnantModel.toJson();
    final PregnantModel fromMap = PregnantModel.fromMap(modelMap);
    final PregnantModel fromJson = PregnantModel.fromJson(jsonFromModel);

    // Assert
    expect(modelMap['usiajanin'], 'Usia Janin');
    expect(modelMap['formatDate'], 'Formatted Date');
    expect(modelMap['bbpreg'], 'Berat Badan Hamil');
    expect(modelMap['selectedvalue'], 'Selected Value');
    expect(modelMap['keluhan'], 'Keluhan');
    expect(modelMap['tindakan'], 'Tindakan');

    expect(fromMap.usiajanin, 'Usia Janin');
    expect(fromMap.formatDate, 'Formatted Date');
    expect(fromMap.bbpreg, 'Berat Badan Hamil');
    expect(fromMap.selectedvalue, 'Selected Value');
    expect(fromMap.keluhan, 'Keluhan');
    expect(fromMap.tindakan, 'Tindakan');

    expect(fromJson.usiajanin, 'Usia Janin');
    expect(fromJson.formatDate, 'Formatted Date');
    expect(fromJson.bbpreg, 'Berat Badan Hamil');
    expect(fromJson.selectedvalue, 'Selected Value');
    expect(fromJson.keluhan, 'Keluhan');
    expect(fromJson.tindakan, 'Tindakan');
  });
}
