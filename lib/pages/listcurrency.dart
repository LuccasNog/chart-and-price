import 'package:btc_exchange/pages/graphic.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:btc_exchange/model/Currencyclass.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'currencycard.dart';
//import 'package:coingecko_api/coingecko_api.dart';

import '../model/Currencyclass.dart';

class ListCurrency extends StatefulWidget {
  const ListCurrency({Key? key}) : super(key: key);

  @override
  State<ListCurrency> createState() => _ListCurrencyState();
}

class _ListCurrencyState extends State<ListCurrency> {
  Color color = Colors.white;

  Future<List<Currency>> fetchCoin() async {
    currencyList = [];
    //print('Inicial projeto List $currencyList');

    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));

    //print('Passou do response: $response');
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      //print(values);
      values = json.decode(response.body);
      // print(values.first);
      if (values.isNotEmpty) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            currencyList.add(Currency.fromJson(map));
            //print(currencyList);
          }
        }

        setState(() {
          currencyList;
          //print('Erro no state $currencyList');
        });
      }
      return currencyList;
    } else {
      throw Exception('Failed to load coins');
    }
  }

  @override
  void initState() {
    fetchCoin();
    Timer.periodic(const Duration(seconds: 15), (timer) => fetchCoin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'SafeWay Crypto',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GraphicCurrency()),
                );
              },
              icon: const Icon(Icons.graphic_eq))
        ],
      ),
      body: ListView.builder(
        //scrollDirection: Axis.vertical,
        itemCount: currencyList.length,
        itemBuilder: (context, index) {
          return CurrencyCard(
            name: currencyList[index].name,
            symbol: currencyList[index].symbol,
            imageUrl: currencyList[index].imageurl,
            price: currencyList[index].price,
            change: currencyList[index].change,
            changePercentage: currencyList[index].changePercentage,
          );
        },
      ),
    );
  }
}
