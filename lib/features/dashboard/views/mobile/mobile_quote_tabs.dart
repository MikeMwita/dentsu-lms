import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/common/utils/utils.dart';
import 'package:dentsulms/features/dashboard/components/drop_down_with_white_background.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_mobile.dart';
import 'package:dentsulms/features/dashboard/components/quote_benefits.dart';
import 'package:dentsulms/features/dashboard/components/quote_data_table_mobile.dart';
import 'package:dentsulms/features/dashboard/components/text_form_white_bg.dart';
import 'package:dentsulms/features/dashboard/views/mobile/quote.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/leads.dart';

class MobileQuoteTabs extends StatefulWidget {
  final Lead lead;
  const MobileQuoteTabs({Key? key, required this.lead}) : super(key: key);

  @override
  MobileQuoteTabsState createState() => MobileQuoteTabsState();
}

class MobileQuoteTabsState extends State<MobileQuoteTabs> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 2.0,
                  color: secondaryColor,
                ),
              ),
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14.0,
              ),
              labelColor: secondaryColor,
              tabAlignment: TabAlignment.start,
              indicatorPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                  text: 'Quote Information',
                ),
                Tab(text: 'Setup'),
                Tab(text: 'Benefits'),
              ],
            ),
            Expanded(
                child: TabBarView(
              children: [
                QuoteInformation(lead: widget.lead),
                const Setup(),
                const Benefits(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class QuoteInformation extends StatelessWidget {
  static const List<String> items = ['Agent portal', 'Facebook', 'Twitter'];
  final Lead lead;
  const QuoteInformation({Key? key, required this.lead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 12),
      child: Column(
        children: [
          verticalSpaceMedium,
          TextFormWhiteBg(
            label: 'First Name',
            width: double.infinity,
            value: lead.name.split(' ')[0],
            hint: '',
          ),
          verticalSpaceSmall,
          TextFormWhiteBg(
            label: 'Middle Name',
            width: double.infinity,
            value: lead.name.split(' ')[1],
            hint: '',
          ),
          verticalSpaceSmall,
          TextFormWhiteBg(
            label: 'Last Name',
            width: double.infinity,
            hint: '',
          ),
          verticalSpaceSmall,
          TextFormWhiteBg(
            label: 'Originating Lead Source',
            width: double.infinity,
            hint: '',
          ),
          verticalSpaceSmall,
          TextFormWhiteBg(
            label: 'Quote ID',
            width: double.infinity,
            hint: '',
          ),
          verticalSpaceSmall,
          TextFormWhiteBg(
            label: 'Owning Business Unit',
            width: double.infinity,
            hint: '',
          ),
          verticalSpaceSmall,
          TextFormWhiteBg(
            label: 'Lead ID',
            width: double.infinity,
            hint: '',
          ),
          verticalSpaceSmall,
          verticalSpaceSmall,
          DropDownWithWhiteBackground(
              label: 'Source',
              items: ['Agent Portal', 'Facebook', 'Admin Portal'],
              selectedValue: 'Agent Portal'),
          verticalSpaceSmall,
          TextFormWhiteBg(
            label: 'Capturing User',
            width: double.infinity,
            hint: '',
          )
        ],
      ),
    );
  }
}

class Setup extends StatelessWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 12),
      child: Column(
        children: [
          verticalSpaceMedium,
          DropDownWithWhiteBackground(
              label: 'Age Bracket',
              items: ['18 to 30 years', '30 to 40 years'],
              selectedValue: '18 to 30 years'),
          verticalSpaceSmall,
          verticalSpaceSmall,
          DropDownWithWhiteBackground(
              label: 'Inpatient Cover Limit',
              items: ['KES 500,000', 'KES 600,000'],
              selectedValue: 'KES 500,000'),
          verticalSpaceSmall,
          verticalSpaceSmall,
          DropDownWithWhiteBackground(
              label: 'Spouse Covered?',
              items: ['Yes', 'No'],
              selectedValue: 'Yes'),
          verticalSpaceSmall,
          verticalSpaceSmall,
          DropDownWithWhiteBackground(
              label: 'How many children?',
              items: ['0 children', '1 children', '2 children'],
              selectedValue: '1 children'),
          verticalSpaceSmall,
          verticalSpaceSmall,
          DropDownWithWhiteBackground(
              label: 'Cover Children?',
              items: ['Yes', 'No'],
              selectedValue: 'Yes'),
          verticalSpaceSmall,
          verticalSpaceSmall,
          DropDownWithWhiteBackground(
              label: 'Spouse Age Bracket',
              items: ['18 to 30 years', '31 to 40 years'],
              selectedValue: '18 to 30 years'),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}

class Benefits extends StatelessWidget {
  const Benefits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 12),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          verticalSpaceMedium,
          DropDownWithWhiteBackground(
              label: 'Inpatient Cover Limit',
              items: [
                'KES 1,000,000',
                'KES 2,000,000',
                'KES 3,000,000',
                'KES 4,000,000'
              ],
              selectedValue: 'KES 1,000,000'),
          const QuoteBenefits(),
          const PremiumSummary(),
        ]));
  }
}

class PremiumSummary extends StatefulWidget {
  const PremiumSummary({Key? key}) : super(key: key);

  @override
  State<PremiumSummary> createState() => _PremiumSummaryState();
}

class _PremiumSummaryState extends State<PremiumSummary> {
  int selectedOption = 1;
  int selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 32, 0, 0),
        decoration: BoxDecoration(
          border: Border.all(color: colorAccountChart, width: 2),
          color: Colors.white, // Set the background color
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceSmall,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Premium Summary",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SvgPicture.asset(
                        "assets/svgs/info.svg",
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  const Divider(),
                  verticalSpaceMedium,
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "KES 131,435",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  const Divider(),
                  Column(
                    children: [
                      Row(children: [
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value as int;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('M-PESA PayBill'),
                            horizontalSpaceRegular,
                            const SizedBox(width: 70.0),
                            Image.asset(
                              'assets/images/mpesa.png', // Replace with your image URL
                              width: 56.0,
                              height: 56.0,
                            ),
                          ],
                        ),
                      ]),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                selectedRadio = value as int;
                              });
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Credit / Debit Card'),
                              horizontalSpaceRegular,
                              SvgPicture.asset(
                                'assets/svgs/visa_mastercard.svg',
                                height: 24.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      verticalSpaceMedium,
                      OutlinedButton(
                        onPressed: () {
                          showSnackBar(
                              context: context,
                              content: "Proceed to check out");
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            width: 1.0, // Border width
                            color: colorAccountChart, // Border color
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(5.0), // Border radius
                          ),
                        ),
                        child: const Text(
                          'Buy Me',
                          style: TextStyle(color: colorAccountChart),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
