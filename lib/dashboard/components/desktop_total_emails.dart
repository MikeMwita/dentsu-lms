import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DesktopTotalEmails extends StatefulWidget {
  const DesktopTotalEmails({Key? key}) : super(key: key);

  @override
  _DesktopTotalEmailsState createState() => _DesktopTotalEmailsState();
}

class _DesktopTotalEmailsState extends State<DesktopTotalEmails> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData1 = [
      ChartData('01', 200),
      ChartData('02', 100),
      ChartData("03", 200),
      ChartData("04", 100),
      ChartData("05", 200),
      ChartData("06", 100),
      ChartData("07", 200),
      ChartData("08", 100),
      ChartData("09", 200),
      ChartData("10", 100),
      ChartData("11", 200),
      ChartData("12", 100),
    ];
    final List<ChartData> chartData2 = [
      ChartData('01', 100),
      ChartData('02', 200),
      ChartData("03", 200),
      ChartData("04", 100),
      ChartData("05", 200),
      ChartData("06", 0),
      ChartData("07", 200),
      ChartData("08", 200),
      ChartData("09", 300),
      ChartData("10", 100),
      ChartData("11", 200),
      ChartData("12", 320),
    ];
    final List<ChartData> chartData3 = [
      ChartData('01', 300),
      ChartData('02', 400),
      ChartData("03", 300),
      ChartData("04", 400),
      ChartData("05", 300),
      ChartData("06", 400),
      ChartData("07", 300),
      ChartData("08", 400),
      ChartData("09", 300),
      ChartData("10", 400),
      ChartData("11", 400),
      ChartData("12", 300),
    ];

    return Center(
        child: SizedBox(
            height: 300,
            child: SfCartesianChart(
                borderColor: Colors.white,
                plotAreaBackgroundColor: Colors.white,
                plotAreaBorderColor: Colors.white,
                primaryXAxis: const CategoryAxis(
                  borderColor: Colors.white,
                  labelPlacement: LabelPlacement.onTicks,
                  majorTickLines: MajorTickLines(width: 0),
                  majorGridLines: MajorGridLines(color: Colors.transparent),
                  axisLine: AxisLine(color: Color.fromARGB(0, 255, 255, 255)),
                ),
                primaryYAxis: const NumericAxis(
                  labelAlignment: LabelAlignment.center,
                  majorTickLines: MajorTickLines(width: 0),
                  majorGridLines: MajorGridLines(
                    color: textColor,
                  ),
                  isVisible: true,
                  labelIntersectAction: AxisLabelIntersectAction.hide,
                  axisLine: AxisLine(color: Colors.white),

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
