import '../data/surah_list.dart';

class Surah {
  int id;
  String revelationPlace;
  String nameSimple;
  String nameArabic;
  String nameEnglish;
  int versesCount;

  Surah({
    required this.id,
    required this.revelationPlace,
    required this.nameSimple,
    required this.nameArabic,
    required this.nameEnglish,
    required this.versesCount,
  });

  Surah.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        revelationPlace = map['revelation_place'],
        nameSimple = map['name_simple'],
        nameArabic = map['name_arabic'],
        nameEnglish = map['translated_name']['name'],
        versesCount = map['verses_count'];

  static final List<Surah> value =
      SurahList.value.map((x) => Surah.fromMap(x)).toList();
  static final int length = SurahList.value.length;
}
