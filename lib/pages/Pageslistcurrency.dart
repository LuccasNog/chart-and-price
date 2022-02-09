import 'package:btc_exchange/controller/List_CurrencyController.dart';
import 'package:flutter/material.dart';

class PageList extends StatelessWidget {
  const PageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabelalist = CurrencyController.table;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchange App'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int currency) {
            return ListTile(
              leading: Image.asset(tabelalist[currency].icon),
              title: Text(tabelalist[currency].label),
              subtitle: Text(tabelalist[currency].sigla),
              trailing: Text(tabelalist[currency].price.toString()),
              //subtitle: Text(tabelalist[currency].price.toString()),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: tabelalist.length),
    );
  }
}
