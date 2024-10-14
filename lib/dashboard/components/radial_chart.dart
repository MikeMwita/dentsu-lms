import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialChart extends StatelessWidget {
  const RadialChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

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
            SizedBox(
              height: 200,
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                      showLabels: false,
                      showTicks: false,
                      startAngle: 270,
                      endAngle: 270,
                      radiusFactor: 0.8,
                      axisLineStyle: const AxisLineStyle(
                          color: chartBehind, // Change the color of the radius
                          thicknessUnit: GaugeSizeUnit.factor,
                          thickness: 0.15),
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            horizontalAlignment: GaugeAlignment.center,
                            positionFactor: 0.1,
                            angle: 180,
                            widget: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: 56,
                                height: 56,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: chartActive),
                                child: const Center(
                                  child: Text(
                                    "47%",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            )),
                      ],
                      pointers: const <GaugePointer>[
                        RangePointer(
                            value: 80,
                            cornerStyle: CornerStyle.bothCurve,
                            enableAnimation: true,
                            animationDuration: 1200,
                            sizeUnit: GaugeSizeUnit.factor,
                            gradient: SweepGradient(
                                colors: <Color>[chartActive, chartActive],
                                stops: <double>[0.25, 0.75]),
                            color: Color.fromARGB(255, 181, 0, 0),
                            width: 0.15),
                      ]),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: SvgPicture.asset(
                          'assets/svgs/dot.svg',
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const Text(
                        'Contacted',
                        style: TextStyle(fontSize: 12),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: Text(
                          '17k',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),

                // Adjust the spacing as needed
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: SvgPicture.asset(
                          'assets/svgs/dot.svg',
                          height: 10,
                          width: 10,
                          colorFilter: const ColorFilter.mode(
                              chartBehind, BlendMode.srcIn),
                        ),
                      ),
                      const Text(
                        'Total Leads',
                        style: TextStyle(fontSize: 12),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: Text(
                          '17k',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
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
