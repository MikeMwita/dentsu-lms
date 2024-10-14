import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:dentsu_app/common/utils/colors.dart';
import 'package:dentsu_app/features/dashboard/components/text_form.dart';
import 'package:flutter/material.dart';

class DesktopStepper extends StatefulWidget {
  const DesktopStepper({Key? key}) : super(key: key);

  @override
  DesktopStepperState createState() => DesktopStepperState();
}

class DesktopStepperState extends State<DesktopStepper> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.white,
            child: const TabBar(
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 4.0,
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
                Tab(text: 'Customer Details'),
                Tab(text: 'Lead Details'),
                Tab(text: 'Assigned Lead'),
                Tab(text: 'Follow Up'),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                CustomerDetails(),
                LeadDetails(),
                AssignedLead(),
                FollowUp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceRegular,
            const Row(
              children: [
                Expanded(
                  child: TextForm(
                    label: 'Customer Name',
                    width: 350.0,
                    hint: 'Full name',
                  ),
                ),
                Expanded(
                  child: TextForm(
                    label: 'Customer Email',
                    width: 350.0,
                    hint: 'Email',
                  ),
                ),
                Expanded(
                  child: TextForm(
                    label: 'Customer Mobile Number',
                    width: 350.0,
                    hint: 'Phone number',
                  ),
                )
              ],
            ),
            verticalSpaceMedium,
            const Row(
              children: [
                Expanded(
                  child: TextForm(
                    label: 'Customer Nearest Branch',
                    width: 350.0,
                    hint: 'Branch',
                  ),
                ),
                Expanded(
                  child: TextForm(
                    label: 'Account Number',
                    width: 350.0,
                    hint: 'Account No.',
                  ),
                ),
                Expanded(
                  child: TextForm(
                    label: 'Customer Type',
                    width: 350.0,
                    hint: 'Type',
                  ),
                )
              ],
            ),
            verticalSpaceSmall,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Set the border radius here
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(secondaryColor),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Save',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LeadDetails extends StatelessWidget {
  const LeadDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      verticalSpaceRegular,
      ColumnTitleText(title: 'Lead Source', subtitle: 'Bulk Upload'),
      ColumnTitleText(title: 'Product Requested', subtitle: 'Mortgage'),
      ColumnTitleText(title: 'Product Sold', subtitle: 'Mortgage Account'),
      ColumnTitleText(
          title: 'Lead Close Reason', subtitle: 'Lost to competition'),
      ColumnTitleText(title: 'Recording Agent', subtitle: 'Khary Fagbure')
    ]);
  }
}

class ColumnTitleText extends StatelessWidget {
  final String title;
  final String subtitle;

  ColumnTitleText({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 8, 0, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,
            Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
            verticalSpaceSmall,
            Text(
              subtitle,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class AssignedLead extends StatelessWidget {
  const AssignedLead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 0, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Absent interface",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class FollowUp extends StatelessWidget {
  const FollowUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Center(
        child: Text('Follow up'),
      ),
    );
  }
}
