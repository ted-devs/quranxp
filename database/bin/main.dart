import 'dart:convert';

import 'package:database/database.dart' as database;
import 'package:database/models/chapter.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // print('Hello world: ${database.calculate()}!');
  final httpPackageUrl = Uri.parse(
    "https://api.quran.com/api/v4/chapters?language=en",
  );

  final httpPackageInfo = await http.read(httpPackageUrl);

  Map<String, dynamic> map = jsonDecode(httpPackageInfo);

  Chapter chapter = Chapter.fromMap(map['chapters'][0]);
  print(chapter);
}
