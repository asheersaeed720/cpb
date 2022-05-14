import 'dart:convert';
import 'dart:developer';

import 'package:cpb/src/bible/bible.dart';
import 'package:cpb/src/network_manager.dart';
import 'package:flutter/services.dart';

class BibleController extends NetworkManager {
  List items = [];

  // @override
  // void onInit() async {
  //   await readJson();
  //   super.onInit();
  // }

  // Future<void> readJson() async {
  //   final String response = await rootBundle.loadString('assets/json/t_kjv.json');
  //   final data = await json.decode(response);
  //   items = data["resultset"]['row'];
  //   log('response $items');
  // }

  Future<List<BibleModel>> readJson() async {
    try {
      final response = await rootBundle.loadString('assets/json/t_kjv.json');
      final data = await json.decode(response);
      log('data ${data.runtimeType}');
      return (data['resultset']['row'] as List).map((e) => BibleModel.fromJson(e)).toList();
      // items = data["resultset"]['row'];
      // log('response $items');
    } catch (e) {
      rethrow;
    }
  }
}
