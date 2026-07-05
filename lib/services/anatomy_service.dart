import 'dart:convert';
import 'package:flutter/services.dart';

import '../models/anatomy_item.dart';

class AnatomyService {
  Future<List<AnatomyItem>> loadUpperLimbBones() async {
    final String jsonString = await rootBundle.loadString(
      'lib/data/upper_limb.json',
    );

    final List<dynamic> jsonData = json.decode(jsonString);

    return jsonData.map((item) => AnatomyItem.fromJson(item)).toList();
  }
}
