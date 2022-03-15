import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphicCurrency extends StatelessWidget {
  const GraphicCurrency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> listmap = {
      "Bitcoin": 20,
      "Ethereum": 10,
      "Litecoin": 8,
      "BNB": 10,
      "ADA": 10,
      "DOT": 10,
      "DOGE": 10,
      "MATIC": 10,
      "TRON": 10
    };

    final colorList = <Color>[
      const Color(0xffe17055),
      const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5),
      const Color(0xff0984e3),
      const Color(0xff6c5ce7),
      const Color(0xff0984e3),
      const Color.fromRGBO(91, 253, 199, 1),
      const Color.fromRGBO(254, 154, 92, 1),
      const Color(0xff6c5ce7),
      const Color.fromRGBO(175, 63, 62, 1.0),
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Safeway Crypto'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: PieChart(
                dataMap: listmap,
                animationDuration: const Duration(milliseconds: 800),
                chartLegendSpacing: 60,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                colorList: colorList,
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 40,
                centerText: "Criptos",
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  legendShape: BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: true,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: false,
                  decimalPlaces: 2,
                ),
              ),
            ),
          ],
        ));
  }
}
