import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatelessWidget {
  const PieChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final List<PieChartData> chartData = [
      PieChartData('David', 25, colorAccountChart),
      PieChartData('Steve', 38, colorInsuranceChart),
      PieChartData('Jack', 34, colorCreditChart),
    ];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Requests',
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
            SizedBox(
              height: 200,
              child: SfCircularChart(series: <CircularSeries>[
                // Render pie chart
                PieSeries<PieChartData, String>(
                    dataSource: chartData,
                    pointColorMapper: (PieChartData data, _) => data.color,
                    xValueMapper: (PieChartData data, _) => data.x,
                    yValueMapper: (PieChartData data, _) => data.y)
              ]),
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
          ],
        ),
      ),
    );
  }
}

class PieChartData {
  PieChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
