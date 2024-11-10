import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/desktop_footer.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_desktop.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DesktopLeadsView extends StatefulWidget {
  const DesktopLeadsView({Key? key}) : super(key: key);

  @override
  DesktopLeadsViewState createState() => DesktopLeadsViewState();
}

class DesktopLeadsViewState extends State<DesktopLeadsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Leads',
                    style: TextStyle(
                        color: darkGreyColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 131.0,
                    height: 42.0,
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
                            MaterialStateProperty.all<Color>(secondaryColor),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            "assets/svgs/export.svg",
                            width: 16.0, // Adjust the width as needed
                            height: 16.0,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(
                              width:
                                  10.0), // Add some space between the icon and text
                          const Text(
                            'Export',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                          ), // Replace with your button text
                        ],
                      ),
                    ),
                  )
                ],
              ),
              verticalSpaceMedium,
              Container(
                width: double.infinity,
                height: 800.0,
                decoration: BoxDecoration(
                  color: Colors.white, // Set the background color
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: SizedBox(
                            width: 100.0,
                            height: 40.0,
                            child: TextFormField(
                              // controller: '',
                              decoration: InputDecoration(
                                hintText: 'Customer name...',
                                contentPadding:
                                    const EdgeInsets.only(top: 16.0, left: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: appBarColor,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDDDDDD),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          horizontalSpaceLarge,
                          Expanded(
                              child: SizedBox(
                            width: 100.0,
                            height: 40.0,
                            child: TextFormField(
                              // controller: '',
                              decoration: InputDecoration(
                                hintText: 'Region',
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                                contentPadding:
                                    const EdgeInsets.only(top: 16.0, left: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: appBarColor,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDDDDDD),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          horizontalSpaceLarge,
                          Expanded(
                              child: SizedBox(
                            width: 100.0,
                            height: 40.0,
                            child: TextFormField(
                              // controller: '',
                              decoration: InputDecoration(
                                hintText: 'Product',
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                                contentPadding:
                                    const EdgeInsets.only(top: 16.0, left: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: appBarColor,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDDDDDD),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          horizontalSpaceLarge,
                          Expanded(
                              child: SizedBox(
                            width: 100.0,
                            height: 40.0,
                            child: TextFormField(
                              // controller: '',
                              decoration: InputDecoration(
                                hintText: 'Status',
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                                contentPadding:
                                    const EdgeInsets.only(top: 16.0, left: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: appBarColor,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDDDDDD),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          horizontalSpaceLarge,
                          Expanded(
                              child: SizedBox(
                            width: 100.0,
                            height: 40.0,
                            child: TextFormField(
                              // controller: '',
                              decoration: InputDecoration(
                                hintText: 'Date',
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                                contentPadding:
                                    const EdgeInsets.only(top: 16.0, left: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: appBarColor,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDDDDDD),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          horizontalSpaceLarge,
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.filter_list,
                                  color: secondaryColor,
                                ),
                                onPressed: () {},
                              ),
                              const Text(
                                'More Filters',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(),

                    const Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: LeadDataTableCopy(),
                    )
                    // Center(
                    //   child: TextButton(
                    //     child: const Text('Lead details'),
                    //     onPressed: () => context.go('/dashboard/leads/details'),
                    //   ),
                    // )
                  ],
                ),
              ),
              const DesktopFooter(),
            ],
          ),
        ));
  }
}
