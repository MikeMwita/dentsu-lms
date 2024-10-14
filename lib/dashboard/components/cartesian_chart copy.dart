import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartData {
  LineChartData(this.x, this.y);
  final int x;
  final double y;
}

class CartesianChart extends StatelessWidget {
  const CartesianChart({
    super.key,
    required this.chartData,
    required this.chartData2,
    required this.chartData3,
  });

  final List<LineChartData> chartData;
  final List<LineChartData> chartData2;
  final List<LineChartData> chartData3;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: screenWidth * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total leads',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: greyColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: SvgPicture.asset(
                          'assets/svgs/dot.svg',
                          height: 10,
                          width: 10,
                          colorFilter: const ColorFilter.mode(
                              colorAccountChart, BlendMode.srcIn),
                        ),
                      ),
                      const Text(
                        'Account',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: SvgPicture.asset(
                          'assets/svgs/dot.svg',
                          height: 10,
                          width: 10,
                          colorFilter: const ColorFilter.mode(
                              colorInsuranceChart, BlendMode.srcIn),
                        ),
                      ),
                      const Text(
                        'Insurance',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                // Adjust the spacing as needed
                SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: SvgPicture.asset(
                          'assets/svgs/dot.svg',
                          height: 10,
                          width: 10,
                          colorFilter: const ColorFilter.mode(
                              colorCreditChart, BlendMode.srcIn),
                        ),
                      ),
                      const Text(
                        'Credit',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: SfCartesianChart(
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
                    LineSeries<LineChartData, int>(
                        color: colorAccountChart,
                        dataSource: chartData,
                        xValueMapper: (LineChartData data, _) => data.x,
                        yValueMapper: (LineChartData data, _) => data.y),
                    LineSeries<LineChartData, int>(
                        color: colorCreditChart,
                        dataSource: chartData2,
                        xValueMapper: (LineChartData data, _) => data.x,
                        yValueMapper: (LineChartData data, _) => data.y),
                    LineSeries<LineChartData, int>(
                        color: colorInsuranceChart,
                        dataSource: chartData3,
                        xValueMapper: (LineChartData data, _) => data.x,
                        yValueMapper: (LineChartData data, _) => data.y),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
