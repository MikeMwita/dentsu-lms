// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dentsulms/models/leads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_mobile.dart';
import 'package:dentsulms/features/dashboard/views/mobile/leads_tab.dart';

class LeadsDetails extends StatefulWidget {
  final Lead person;

  LeadsDetails({
    Key? key,
    required this.person,
  }) : super(key: key);

  @override
  _LeadsDetailsState createState() => new _LeadsDetailsState();
}

class _LeadsDetailsState extends State<LeadsDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: GestureDetector(
                    onTap: () => context.go('/leads_mobile/'),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_outlined,
                          color: secondaryColor,
                        ),
                        horizontalSpaceSmall,
                        const Text(
                          'Back to all leads',
                          style: TextStyle(
                            color: chartActive,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        horizontalSpaceSmall,
                        const Text('/'),
                        horizontalSpaceSmall,
                        Text(
                          widget.person.id,
                          style: TextStyle(
                              color: darkGreyColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(24),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white, // Set the background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'Lead Status',
                      style: TextStyle(
                          color: darkGreyColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 49, 174, 186),
                                secondaryColor
                              ], // Add your gradient colors
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Your button's onPressed logic here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors
                                  .transparent, // This is important for the gradient to be visible
                              elevation: 0, // Optional: remove button elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/svgs/tick.svg",
                                ),
                                const Text('Contacted',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    0, 162, 18, 18), // Set the background color
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Handle button press
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(
                            color: secondaryColor), // Set the border color
                      ),
                      icon: const Icon(
                        Icons.close,
                        size: 24,
                        color: secondaryColor, // Set the icon color
                      ),
                      label: const Text(
                        'Cancel lead',
                        style: TextStyle(
                          color: secondaryColor, // Set the text color
                        ),
                      ),
                    ),
                  ),
                  horizontalSpaceRegular,
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20.0), // Set the border radius here
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(colorAccountChart),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Replace with your desired icon
                          // Add some space between the icon and text
                          Text(
                            'Next',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 50.0),
                          Icon(
                            Icons.navigate_next,
                            color: textColor,
                            size: 24,
                          ), // Replace with your button text
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white, // Set the background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/profile.png",
                        width: 59,
                        height: 59,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.person.name,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            verticalSpaceSmall,
                            const Text(
                              "Nairobi Kenya",
                              style: TextStyle(fontSize: 14, color: greyColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white, // Set the background color
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: textColor, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "lead created",
                              style: TextStyle(fontSize: 14),
                            ),
                            verticalSpaceTiny,
                            const Text(
                              "10 August 2022",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white, // Set the background color
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: textColor, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "last Contacted",
                              style: TextStyle(fontSize: 14),
                            ),
                            verticalSpaceTiny,
                            const Text(
                              "10 August 2022",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white, // Set the background color
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: textColor, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Next Appointment",
                              style: TextStyle(fontSize: 14),
                            ),
                            verticalSpaceTiny,
                            const Text(
                              "10 August 2022",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                verticalSpaceRegular
              ]),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white, // Set the background color
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                    width: double.maxFinite, height: 500, child: LeadsTab())),
          ],
        ),
      ),
    );
  }
}
