import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphicCurrency extends StatelessWidget {
  const GraphicCurrency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> listmap = {
      "Bitcoin": 2009,
      "Ethereum": 100,
      "Litecoin": 100,
      "BNB": 200,
    };

    final colorList = <Color>[
      const Color(0xfffdcb6e),
      const Color(0xff0984e3),
      const Color(0xfffd79a8),
      const Color(0xffe17055),
      const Color(0xff6c5ce7),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchange App'),
      ),
      body: Container(
        child: PieChart(
          dataMap: listmap,
          animationDuration: const Duration(milliseconds: 800),
          chartLegendSpacing: 32,
          chartRadius: MediaQuery.of(context).size.width / 3.2,
          colorList: colorList,
          initialAngleInDegree: 0,
          chartType: ChartType.ring,
          ringStrokeWidth: 32,
          centerText: "HYBRID",
          legendOptions: LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: true,
            legendShape: BoxShape.circle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: true,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
        ),
      ),
    );
  }
}
