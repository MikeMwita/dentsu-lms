import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/desktop_footer.dart';
import 'package:dentsulms/features/dashboard/components/desktop_total_emails.dart';
import 'package:dentsulms/features/dashboard/components/desktop_total_leads_graph.dart';
import 'package:dentsulms/features/dashboard/components/single_Line_cartesian_chart.dart';
import 'package:dentsulms/features/dashboard/components/top_products_desktop.dart';
import 'package:dentsulms/features/dashboard/views/desktop_dashboard_screen.dart';
import 'package:dentsulms/features/dashboard/views/desktop_lead_view.dart';
import 'package:flutter/material.dart';

class DashboardMainarea extends StatefulWidget {
  const DashboardMainarea({Key? key}) : super(key: key);

  @override
  DashboardMainareaState createState() => DashboardMainareaState();
}

class DashboardMainareaState extends State<DashboardMainarea> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/hero_image.png'), // Replace with your image asset path
                  fit: BoxFit.fill, // Adjust the BoxFit property as needed
                ), // Set the border radius
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(40.0, 60.0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Hey',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 38.0,
                              fontWeight: FontWeight.w700),
                        ),
                        horizontalSpaceTiny,
                        SizedBox(
                          width: 36.0,
                          child: Image.asset('assets/images/hi.png'),
                        ),
                        horizontalSpaceTiny,
                        const Text(
                          'Maxwell',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 38.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    const Text(
                      'Welcome Back. Check your notifications to see any new updates.',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpaceMedium,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Overall Lead Performance',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700),
                ),
                MyDropdownButton(),
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: 589.0 + 258.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(46.0),
                          bottomRight: Radius.circular(46.0),
                        ),
                      ),
                      child: Column(children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Row(
                                        children: [
                                          Text(
                                            'Total Leads Over Time',
                                            style: TextStyle(
                                                color: darkGreyColor,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          MyDropdownButton(),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: blueColor,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 4.0,
                                              ),
                                              const Text(
                                                "Total leads",
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          horizontalSpaceRegular,
                                          Row(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: greenColor,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 4.0,
                                              ),
                                              const Text(
                                                "Converted leads",
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          horizontalSpaceRegular,
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 20.0,
                                                child: FittedBox(
                                                  fit: BoxFit.fill,
                                                  child: Switch(
                                                    value: isSwitched,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        isSwitched = value;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 4.0,
                                              ),
                                              const Text(
                                                "Predictive",
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  verticalSpaceLarge,
                                  const DesktopTotalLeadsGraph()
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              height: 300.0,
                              decoration: BoxDecoration(
                                color:
                                    secondaryColor, // Set the background color
                                borderRadius: BorderRadius.circular(46.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lead Analysis',
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        MyDropdownButton(),
                                      ],
                                    ),
                                    verticalSpaceSmall,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Total Leads',
                                                        style: TextStyle(
                                                            color: textColor,
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      horizontalSpaceTiny,
                                                      const Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .keyboard_arrow_up_outlined,
                                                            color: greenColor,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            '+45%',
                                                            style: TextStyle(
                                                                color:
                                                                    greenColor,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const Text(
                                                '1,300,000',
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 28.0,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              verticalSpaceSmall,
                                              const Text(
                                                '32% increase compared to 31 days ago',
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                        horizontalSpaceRegular,
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Total Leads',
                                                        style: TextStyle(
                                                            color: textColor,
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      horizontalSpaceTiny,
                                                      const Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .keyboard_arrow_up_outlined,
                                                            color: greenColor,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            '+45%',
                                                            style: TextStyle(
                                                                color:
                                                                    greenColor,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const Text(
                                                '1,300,000',
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 28.0,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              verticalSpaceSmall,
                                              const Text(
                                                '32% increase compared to 31 days ago',
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                        horizontalSpaceRegular,
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Total Leads',
                                                        style: TextStyle(
                                                            color: textColor,
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      horizontalSpaceTiny,
                                                      const Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .keyboard_arrow_up_outlined,
                                                            color: greenColor,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            '+45%',
                                                            style: TextStyle(
                                                                color:
                                                                    greenColor,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const Text(
                                                '1,300,000',
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 28.0,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              verticalSpaceSmall,
                                              const Text(
                                                '32% increase compared to 31 days ago',
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                        horizontalSpaceRegular,
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Total Leads',
                                                        style: TextStyle(
                                                            color: textColor,
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      horizontalSpaceTiny,
                                                      const Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .keyboard_arrow_up_outlined,
                                                            color: greenColor,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            '+45%',
                                                            style: TextStyle(
                                                                color:
                                                                    greenColor,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const Text(
                                                '1,300,000',
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 28.0,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              verticalSpaceSmall,
                                              const Text(
                                                '32% increase compared to 31 days ago',
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ]),
                    )),
                horizontalSpaceRegular,
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 589.0 + 258.0,
                      color: Colors.transparent,
                      child: Center(
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: SizedBox(
                                  width: 374.0,
                                  height: 627.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .white, // Set the background color
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const TopProductsDesktop(),
                                  ),
                                )),
                            verticalSpaceRegular,
                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: 374.0,
                                  height: 200.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .white, // Set the background color
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  'Turn Around Time',
                                                  style: TextStyle(
                                                      color: darkGreyColor,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w700),
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
                                            verticalSpaceMedium,
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '2.43 (Days)',
                                                  style: TextStyle(
                                                      color: darkGreyColor,
                                                      fontSize: 24.0,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_up_outlined,
                                                      color: greenColor,
                                                      size: 24.0,
                                                    ),
                                                    Text(
                                                      '+45%',
                                                      style: TextStyle(
                                                          color: greenColor,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            verticalSpaceMedium,
                                            const Text(
                                              'Was 8.61 (days) 31 days ago',
                                              style: TextStyle(
                                                  color: darkGreyColor,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        )),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            verticalSpaceMedium,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Prediction Analysis',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700),
                ),
                MyDropdownButton(),
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 374.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'January',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
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
                          const Text(
                            'Total Profiles',
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '34%',
                                    style: TextStyle(
                                        color: greenColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_up_outlined,
                                    color: greenColor,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                              Text(
                                '8,006',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5% increase",
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
                              ),
                              Text(
                                'Hot Leads',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          const Text(
                            "compared to last month",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpaceRegular,
                Expanded(
                  child: Container(
                    width: 374.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'February',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
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
                          const Text(
                            'Conversation Rate',
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '28%',
                                    style: TextStyle(
                                        color: redColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: redColor,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                              Text(
                                '5,439',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "6% decrease",
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
                              ),
                              Text(
                                'Hot Leads',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          const Text(
                            "compared to last month",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpaceRegular,
                Expanded(
                  child: Container(
                    width: 374.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'March',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
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
                          const Text(
                            'Conversation Rate',
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '22%',
                                    style: TextStyle(
                                        color: redColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: redColor,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                              Text(
                                '2,806',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "6% decrease",
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
                              ),
                              Text(
                                'Hot Leads',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          const Text(
                            "compared to last month",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpaceRegular,
                Expanded(
                  child: Container(
                    width: 374.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'April',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
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
                          const Text(
                            'Conversation Rate',
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '42%',
                                    style: TextStyle(
                                        color: greenColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_up_outlined,
                                    color: greenColor,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                              Text(
                                '18,006',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "20% increase",
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
                              ),
                              Text(
                                'Hot Leads',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          const Text(
                            "compared to last month",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            verticalSpaceMedium,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Campaign Activity',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700),
                ),
                MyDropdownButton(),
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 485.0,
                    height: 350.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Top Campaigns',
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceLarge,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mothers Day',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w100),
                              ),
                              Text(
                                '65,376',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          SizedBox(
                            height: 9.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const LinearProgressIndicator(
                                value:
                                    0.5, // Set the progress value between 0.0 and 1.0
                                backgroundColor:
                                    textColor, // Set the background color
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    secondaryColor), // Set the progress color
                              ),
                            ),
                          ),
                          verticalSpaceRegular,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Fathers Day',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w100),
                              ),
                              Text(
                                '65,376',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          SizedBox(
                            height: 9.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const LinearProgressIndicator(
                                value:
                                    0.8, // Set the progress value between 0.0 and 1.0
                                backgroundColor:
                                    textColor, // Set the background color
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    blueColor), // Set the progress color
                              ),
                            ),
                          ),
                          verticalSpaceRegular,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Pre-Paid Card',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w100),
                              ),
                              Text(
                                '65,376',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          SizedBox(
                            height: 9.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const LinearProgressIndicator(
                                value:
                                    0.4, // Set the progress value between 0.0 and 1.0
                                backgroundColor:
                                    textColor, // Set the background color
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    tintGreenColor), // Set the progress color
                              ),
                            ),
                          ),
                          verticalSpaceRegular,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mortgage Campaign',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w100),
                              ),
                              Text(
                                '65,376',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          SizedBox(
                            height: 9.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const LinearProgressIndicator(
                                value:
                                    0.5, // Set the progress value between 0.0 and 1.0
                                backgroundColor:
                                    textColor, // Set the background color
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    yellowColor), // Set the progress color
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpaceRegular,
                Expanded(
                  child: Container(
                    width: 485.0,
                    height: 350.0,
                    decoration: BoxDecoration(
                      color: secondaryColor, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceLarge,
                          Row(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Total Emails Sent',
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  horizontalSpaceTiny,
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.keyboard_arrow_up_outlined,
                                        color: greenColor,
                                        size: 24.0,
                                      ),
                                      Text(
                                        '+45%',
                                        style: TextStyle(
                                            color: greenColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Text(
                            '1,300,000',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceMedium,
                          const Text(
                            'Total Emails Delivered',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '1,100,000',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceLarge,
                          const Text(
                            '32% increase compared to 31 days ago',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpaceRegular,
                Expanded(
                  child: Container(
                    width: 485.0,
                    height: 350.0,
                    decoration: BoxDecoration(
                      color: secondaryColor, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'SMS',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceLarge,
                          Row(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Total SMS Sent',
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  horizontalSpaceTiny,
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: redColor,
                                        size: 24.0,
                                      ),
                                      Text(
                                        '+45%',
                                        style: TextStyle(
                                            color: redColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Text(
                            '1,300,000',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceMedium,
                          const Text(
                            'Total SMS Delivered',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '800,000',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceLarge,
                          const Text(
                            '20.43% decline compared to 31 days ago',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            verticalSpaceMedium,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Overall Channel Performance',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700),
                ),
                MyDropdownButton(),
              ],
            ),
            verticalSpaceMedium,
            Container(
              width: double.infinity,
              height: 500.0,
              decoration: BoxDecoration(
                color: Colors.white, // Set the background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Total Emails Over Time',
                              style: TextStyle(
                                  color: darkGreyColor,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            MyDropdownButton(),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colorSentEmails,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                const Text(
                                  "Emails Sent",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            horizontalSpaceRegular,
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colorDeliveredEmails,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                const Text(
                                  "Emails Delivered",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            horizontalSpaceRegular,
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: greenColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                const Text(
                                  "Emails Opened",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    verticalSpaceLarge,
                    DesktopTotalEmails(),
                  ],
                ),
              ),
            ),
            verticalSpaceMedium,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Customer Profile',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700),
                ),
                MyDropdownButton(),
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 374.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Total Profiles',
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
                          verticalSpaceSmall,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '8,006',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 50,
                                  child: SingleLineCartesianChart())
                            ],
                          ),
                          verticalSpaceSmall,
                          const Text(
                            "6% decrease",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                          const Text(
                            "compared to last month",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpaceRegular,
                Expanded(
                  child: Container(
                    width: 374.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'New Profiles',
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
                          verticalSpaceSmall,
                          const Text(
                            '8,006',
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceSmall,
                          const Text(
                            "6% decrease",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                          const Text(
                            "compared to last month",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpaceRegular,
                Expanded(
                  child: Container(
                    width: 374.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Active Profiles',
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
                          verticalSpaceSmall,
                          const Text(
                            '2,806',
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceSmall,
                          const Text(
                            "6% decrease",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                          const Text(
                            "compared to last month",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpaceRegular,
                Expanded(
                  child: Container(
                    width: 374.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Dormant Profiles',
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
                          verticalSpaceSmall,
                          const Text(
                            '18,006',
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w700),
                          ),
                          verticalSpaceSmall,
                          const Text(
                            "6% increase",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                          const Text(
                            "compared to last month",
                            style: TextStyle(
                                color: darkGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const DesktopFooter(),
          ],
        ),
      ),
    );
  }
}
