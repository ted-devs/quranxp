
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

  @override
  String toString() {
    return 'Id: $id\n'
        'Revelation Place: $revelationPlace\n'
        'Simple Name: $nameSimple\n'
        'Arabic Name: $nameArabic\n'
        'English Name: $nameEnglish\n'
        'Number of Verses: $versesCount';
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'revelation_place': revelationPlace,
        'name_simple': nameSimple,
        'name_arabic': nameArabic,
        'name_english': nameEnglish,
        'verses_count': versesCount,
      };
}
