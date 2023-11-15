import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mypregnant/model/tbc_model.dart';

void main() {
  group('TbcModel', () {
    test('check if fromJson and toJson methods are working properly', () {
      final Map<String, dynamic> tbcMap = {
        'tbcid': '1',
        'hari': 'Senin',
        'formattgl': '2022-03-28',
        'beratbadan': '65',
        'keluhan': 'Demam',
        'tindakan': 'Obat Paracetamol',
      };

      final TbcModel tbcModel = TbcModel.fromJson(json.encode(tbcMap));
      expect(tbcModel.toJson(), json.encode(tbcMap));
    });

    test('check if toMap and fromMap methods are working properly', () {
      final Map<String, dynamic> tbcMap = {
        'tbcid': '1',
        'hari': 'Senin',
        'formattgl': '2022-03-28',
        'beratbadan': '65',
        'keluhan': 'Demam',
        'tindakan': 'Obat Paracetamol',
      };

      final TbcModel tbcModel = TbcModel.fromMap(tbcMap);
      expect(tbcModel.toMap(), tbcMap);
    });
  });
}
