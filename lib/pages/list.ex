Future<List<Currency>> searchCurrency() async {
      //pegando o array de moedas
      currencyList = [];
      //comunicação Http
      final response = await http.get(Uri.parse(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));
      //verificar o status da conexão
      if (response.statusCode == 200) {
        //vai recber uma lista deynamic
        List<dynamic> values = [];
        values = json.decode(response.body);
        if(values.length > 0){
          for(int i = 0; i < values.length; i++){
              
          }
        }

      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Exchange App'),
        ),
        body: ListView.separated(
          itemCount: currencyList.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (BuildContext context, index) {
            return Currency(
                name: currencyList[index].name,
                symbol: currencyList[index].symbol,
                price: currencyList[index].price,
                imageurl: currencyList[index].name);
          },
        ));
  }