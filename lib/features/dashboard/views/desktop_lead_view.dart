import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/desktop_footer.dart';
import 'package:dentsulms/features/dashboard/components/desktop_lead_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DesktopLeadView extends StatefulWidget {
  const DesktopLeadView({Key? key}) : super(key: key);

  @override
  DesktopLeadViewState createState() => DesktopLeadViewState();
}

class DesktopLeadViewState extends State<DesktopLeadView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => context.go('/dashboard/leads'),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_outlined,
                        color: secondaryColor,
                      ),
                      horizontalSpaceTiny,
                      const Text(
                        'Back to all leads',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                horizontalSpaceRegular,
                const Text('/'),
                horizontalSpaceRegular,
                const Text(
                  'LD-20210121-41760202',
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            verticalSpaceMedium,
            Container(
              width: double.infinity,
              height: 260.0,
              decoration: BoxDecoration(
                color: Colors.white, // Set the background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'Lead Status',
                      style: TextStyle(
                          color: darkGreyColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                    child: SvgPicture.asset(
                      "assets/svgs/stepper.svg",
                    ),
                  ),
                  verticalSpaceRegular,
                  const Divider(),
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add your button action here
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Set the border radius here
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(greyColor),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: darkGreyColor,
                                size: 16.0,
                              ), // Replace with your desired icon
                              SizedBox(
                                  width:
                                      8.0), // Add some space between the icon and text
                              Text(
                                'Previous',
                                style: TextStyle(
                                    color: darkGreyColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400),
                              ), // Replace with your button text
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add your button action here
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Set the border radius here
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                secondaryColor),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Next',
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 8.0),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: textColor,
                                size: 8.0,
                              ), // Replace with your button text
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            verticalSpaceMedium,
            Container(
              width: double.infinity,
              height: 440.0,
              decoration: BoxDecoration(
                color: Colors.white, // Set the background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                child: DesktopStepper(),
              ),
            ),
            const DesktopFooter(),
          ],
        ),
      ),
    );
  }
}
