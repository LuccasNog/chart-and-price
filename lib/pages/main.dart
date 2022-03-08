import 'package:btc_exchange/pages/initialroute.dart';
import 'package:flutter/material.dart';

import 'graphic.dart';
import 'listcurrency.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto List',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: 'initialroute',
      routes: {
        'initialroute': (__) => const InitialRoute(),
        'listcurrency': (__) => const ListCurrency(),
        'graphic': (__) => const GraphicCurrency()
      },
    );
  }
}
