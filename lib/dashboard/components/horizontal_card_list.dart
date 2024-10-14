import 'package:dentsu_app/features/dashboard/components/line_cartesian_chart.dart';
import 'package:dentsu_app/features/dashboard/components/pie_chart.dart';
import 'package:dentsu_app/features/dashboard/components/radial_chart.dart';
import 'package:dentsu_app/features/dashboard/components/top_products_mobile.dart';
import 'package:flutter/material.dart';

class HorizontalCardList extends StatefulWidget {
  const HorizontalCardList({super.key});

  @override
  State<HorizontalCardList> createState() => _HorizontalCardListState();
}

class _HorizontalCardListState extends State<HorizontalCardList> {
  final double progressValue = 80;

  @override
  Widget build(BuildContext context) {
    final List<LineChartData> chartData = [
      LineChartData(2010, 0),
      LineChartData(2011, 28),
      LineChartData(2012, 34),
      LineChartData(2013, 32),
      LineChartData(2014, 40)
    ];

    final List<LineChartData> chartData2 = [
      LineChartData(2010, 0),
      LineChartData(2011, 20),
      LineChartData(2012, 12),
      LineChartData(2013, 35),
      LineChartData(2014, 56)
    ];

    final List<LineChartData> chartData3 = [
      LineChartData(2010, 0),
      LineChartData(2011, 25),
      LineChartData(2012, 17),
      LineChartData(2013, 19),
      LineChartData(2014, 30)
    ];

    final List<Widget> components = [
      const RadialChart(),
      CartesianChart(
          chartData: chartData, chartData2: chartData2, chartData3: chartData3),
      const PieChart(),
      const TopProductsMobile()
    ];
    // double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 330,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: components.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 0,
            margin: const EdgeInsets.all(8.0), // Adjust the margin as needed
            child: Container(
              child: components[index],
            ),
          );
        },
      ),
    );
  }
}
