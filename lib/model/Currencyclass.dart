class Currency {
  String id;
  String name;
  String symbol;
  String imageurl;
  int price;
  double change;
  double changePercentage;

  Currency(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.price,
      required this.imageurl,
      required this.change,
      required this.changePercentage});

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      id: json['id'],
      name: json['name'],
      symbol: json['symbol'],
      imageurl: json['image'],
      price: json['currency_price'] ?? 0,
      change: json['price_change_24h'],
      changePercentage: json['price_change_percentage_24h'],
    );
  }
}

List<Currency> currencyList = [];
