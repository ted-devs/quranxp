import 'package:flutter/material.dart';

import '../models/surah.dart';

class SurahListItem extends StatelessWidget {
  SurahListItem(this.index, {super.key});

  final int index;
  final List<Surah> surahs = Surah.value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Center(
            child: Text(
              '${surahs[index].id}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              surahs[index].nameSimple,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 6),
            Text(surahs[index].nameEnglish),
          ],
        ),
      ],
    );
  }
}
