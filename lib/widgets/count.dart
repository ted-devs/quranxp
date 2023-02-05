import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/counter.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    int count = context.watch<Counter>().value;
    return Text('$count', style: Theme.of(context).textTheme.headlineMedium);
  }
}
