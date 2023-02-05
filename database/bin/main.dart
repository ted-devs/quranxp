import 'dart:convert';

import 'package:database/models/quran_db.dart';
import 'package:database/models/surah.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main(List<String> arguments) async {
  sqfliteFfiInit();

  var db = await databaseFactoryFfi.openDatabase("quranxp.db");
  // QuranDb.initializeDb(db);
}
