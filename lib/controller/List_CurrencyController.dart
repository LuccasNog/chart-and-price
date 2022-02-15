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

  Future<List> SearchMoedas() async {
    var url = Uri.parse('http://api.coinbase.com/v2/assets/search?base=brl');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Erro ao acessar API');
    }
  }
}
