import 'package:btc_exchange/pages/Pageslistcurrency.dart';
import 'package:flutter/material.dart';

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
      initialRoute: 'listpage',
      routes: {
        'listpage': (_) => const PageList(),
      },
    );
  }
}
