import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyChart extends StatefulWidget {
  const MyChart({Key? key}) : super(key: key);

  @override
  State<MyChart> createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  Map<String, double> dataMap = {
    "Food": 18.47,
    "Clothes": 17.70,
    "Technology": 10.25,
    "Cosmetics": 3.51,
    "Other": 2.83,
  };

  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
  ];

  // final gradientList = <List<Color>>[
  //   [
  //     const Color.fromRGBO(223, 250, 92, 1),
  //     const Color.fromRGBO(129, 250, 112, 1),
  //   ],
  //   [
  //     const Color.fromRGBO(129, 182, 205, 1),
  //     const Color.fromRGBO(91, 253, 199, 1),
  //   ],
  //   [
  //     const Color.fromRGBO(175, 63, 62, 1.0),
  //     const Color.fromRGBO(254, 154, 92, 1),
  //   ]
  // ];

  @override
  Widget build(BuildContext context) {
    return PieChart(
      chartType: ChartType.disc,
      // chartLegendSpacing: 50.0,
      dataMap: dataMap,
      colorList: colorList,
      chartRadius: MediaQuery.of(context).size.width / 2,
      centerText: "Budget",
      ringStrokeWidth: 30,

      animationDuration: const Duration(seconds: 3),
      chartValuesOptions: const ChartValuesOptions(
          showChartValues: true,
          showChartValuesOutside: true,
          chartValueStyle: defaultChartValueStyle,
          showChartValuesInPercentage: true,
          showChartValueBackground: false),
      legendOptions: const LegendOptions(
          showLegends: true,
          legendShape: BoxShape.circle,
          legendTextStyle: TextStyle(fontSize: 15),
          legendPosition: LegendPosition.bottom,
          showLegendsInRow: true),
    );
  }
}
