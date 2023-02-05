import 'package:flutter/material.dart';

import '../models/surah.dart';
import '../widgets/surah_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: SurahListItem(index),
          ),
          itemCount: Surah.length,
        ),
      ),
    );
  }
}
