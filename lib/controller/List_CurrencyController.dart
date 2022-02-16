//classe que vai se conectar no futuro com uma API ou BD

import 'dart:convert';

import 'package:btc_exchange/model/Currencyclass.dart';
import 'package:http/http.dart' as http;

//var url = Uri.parse(uri)
//

class CurrencyController {
  static List<Currency> tabela = [];
  //retornar os dados da moeda
//  List<Currency> get table => tabela;

  Future<List<Map<String, dynamic>>> searchCurrencys() async {
    var andress =
        Uri.parse('http://api.coinbase.com/v2/assets/search?base=brl');
    http.Response response = await http.get(andress);
    if (response.statusCode != 200) {
      print('error');
    } else {
      return List<Map<String, dynamic>>.from(
          json.decode(response.body)['data']);
      print(utf8.decode(response.data));
    }
  }
}

/*
static Future<List> SearchMoedas() async {
    var url = Uri.parse('http://api.coinbase.com/v2/assets/search?base=brl');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // return jsonDecode(utf8.decode(response.body));
      //  print(response.body);
      tabela = json.decode(response.body);
      print(tabela);
      // return json.decode(response.body);
      return jsonDecode(response.body);
    } else {
      throw Exception('Erro ao acessar API');
    }
  }
 */ 