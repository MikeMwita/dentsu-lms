import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DesktopTotalLeadsGraph extends StatefulWidget {
  const DesktopTotalLeadsGraph({Key? key}) : super(key: key);

  @override
  _DesktopTotalLeadsGraphState createState() => _DesktopTotalLeadsGraphState();
}

class _DesktopTotalLeadsGraphState extends State<DesktopTotalLeadsGraph> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData1 = [
      ChartData("28, Jun", 0),
      ChartData("30, Jun", 1),
      ChartData("02, Jul", 5),
      ChartData("04, Jul", 5),
      ChartData("06, Jul", 5),
      ChartData("08, Jul", 1),
      ChartData("10, Jul", 2),
      ChartData("12, Jul", 4),
      ChartData("14, Jul", 8),
      ChartData("16, Jul", 4),
      ChartData("18, Jul", 5),
      ChartData("20, Jul", 3),
      ChartData("22, Jul", 6),
      ChartData("24, Jul", 5),
    ];
    final List<ChartData> chartData2 = [
      ChartData("28, Jun", 0),
      ChartData("30, Jun", 5),
      ChartData("02, Jul", 2),
      ChartData("04, Jul", 7),
      ChartData("06, Jul", 3),
      ChartData("08, Jul", 5),
      ChartData("10, Jul", 7),
      ChartData("12, Jul", 4),
      ChartData("14, Jul", 2),
      ChartData("16, Jul", 4),
      ChartData("18, Jul", 5),
      ChartData("20, Jul", 3),
      ChartData("22, Jul", 4),
      ChartData("24, Jul", 8),
    ];
    final List<ChartData> chartData3 = [
      ChartData("28, Jun", 6),
      ChartData("30, Jun", 2),
      ChartData("02, Jul", 2.5),
      ChartData("04, Jul", 3),
      ChartData("06, Jul", 6),
      ChartData("08, Jul", 5),
      ChartData("10, Jul", 3),
      ChartData("12, Jul", 8),
      ChartData("14, Jul", 2),
      ChartData("16, Jul", 3),
      ChartData("18, Jul", 5),
      ChartData("20, Jul", 2),
      ChartData("22, Jul", 6),
      ChartData("24, Jul", 4),
    ];

    return Center(
        child: SizedBox(
            height: 460,
            child: SfCartesianChart(
                borderColor: const Color.fromARGB(0, 255, 255, 255),
                plotAreaBackgroundColor: const Color.fromARGB(0, 255, 255, 255),
                plotAreaBorderColor: const Color.fromARGB(0, 255, 255, 255),
                primaryXAxis: const CategoryAxis(
                  borderColor: Colors.white,
                  placeLabelsNearAxisLine: false,
                  labelPlacement: LabelPlacement.onTicks,
                  majorTickLines: MajorTickLines(width: 0),
                  majorGridLines: MajorGridLines(color: Colors.transparent),
                  axisLine: AxisLine(
                      color: Color.fromARGB(0, 255, 255, 255), width: 0),
                ),
                primaryYAxis: const NumericAxis(
                  labelAlignment: LabelAlignment.center,
                  majorTickLines: MajorTickLines(width: 0),
                  majorGridLines: MajorGridLines(color: textColor),
                  isVisible: true,
                  minimum: 0,
                  axisLine: AxisLine(color: Colors.white, width: 0),

                  // Hide major grid lines
                ),
                series: <CartesianSeries>[
                  SplineSeries<ChartData, String>(
                      color: Colors.orange,
                      dataSource: chartData1,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y),
                  SplineSeries<ChartData, String>(
                      color: Colors.green,
                      dataSource: chartData2,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y),
                  SplineSeries<ChartData, String>(
                      color: Colors.blue,
                      dataSource: chartData3,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y)
                ])));
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
