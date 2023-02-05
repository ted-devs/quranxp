import 'dart:convert';

import 'package:http/http.dart' as http;

import 'surah.dart';

class QuranDb {
  static void initializeDb(var db) {
    initSurah(db);
  }

  static void initSurah(var db) async {
    final httpPackageUrl = Uri.parse(
      "https://api.quran.com/api/v4/chapters?language=en",
    );

    final httpPackageInfo = await http.read(httpPackageUrl);

    Map<String, dynamic> map = jsonDecode(httpPackageInfo);

    for (var chapter in map['chapters']) {
      db.insert('surah', Surah.fromMap(chapter).toMap());
    }
  }
}
