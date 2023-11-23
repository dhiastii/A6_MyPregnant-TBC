import 'package:flutter_test/flutter_test.dart';
import 'package:mypregnant/model/diaggejala_model.dart'; // Sesuaikan dengan lokasi file DiaggejalaModel

void main() {
  test('Integration Test - Adding Data to DiaggejalaModel', () {
    // Data yang akan ditambahkan ke DiaggejalaModel
    String diagid = '1';
    List<String> selectedSymptoms = ['Sesak Nafas', 'Nyeri Punggung'];
    String diagnosisResult = 'TBC Tulang Belakang';

    // Membuat objek DiaggejalaModel
    DiaggejalaModel diagModel = DiaggejalaModel(
      diagid: diagid,
      selectedSymptoms: selectedSymptoms,
      diagnosisResult: diagnosisResult,
    );

    // Memastikan data ditambahkan dengan benar ke dalam objek DiaggejalaModel
    expect(diagModel.diagid, diagid);
    expect(diagModel.selectedSymptoms, selectedSymptoms);
    expect(diagModel.diagnosisResult, diagnosisResult);
  });
}
