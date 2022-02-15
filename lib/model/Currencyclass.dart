import 'package:flutter/widgets.dart';

class Currency {
  String label;
  String icon;
  String sigla;
  double price;
  Color color;
  Currency(
      {required this.label,
      required this.icon,
      required this.price,
      required this.sigla,
      required this.color});
}
