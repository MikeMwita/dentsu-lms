import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartData {
  LineChartData(this.x, this.y);
  final int x;
  final double y;
}

class SingleLineCartesianChart extends StatelessWidget {
  const SingleLineCartesianChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<LineChartData> chartData = [
      LineChartData(2010, 4),
      LineChartData(2011, 25),
      LineChartData(2012, 2),
      LineChartData(2013, 19),
      LineChartData(2014, 30),
      LineChartData(2015, 2),
      LineChartData(2016, 19),
      LineChartData(2017, 2)
    ];

    return SfCartesianChart(
        plotAreaBorderColor: Colors.white,
        primaryYAxis: const NumericAxis(
          isVisible: false,
        ),
        // ignore: prefer_const_constructors
        primaryXAxis: NumericAxis(
            // X axis is hidden now
            isVisible: false),
        series: <CartesianSeries>[
          // Renders line chart
          SplineSeries<LineChartData, int>(
              color: greenColor,
              width: 2,
              dataSource: chartData,
              xValueMapper: (LineChartData data, _) => data.x,
              yValueMapper: (LineChartData data, _) => data.y),
        ]);
  }
}
