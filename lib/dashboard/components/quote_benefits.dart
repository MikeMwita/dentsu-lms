import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';

class QuoteBenefits extends StatelessWidget {
  const QuoteBenefits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(color: borderGreyColor, width: 0.5),
        color: Colors.white, // Set the background color
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.all(24.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Benefits",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceTiny,
                  SwitchWithTitle(label: 'Inpatient', switchInpatient: true),
                  const Divider(),
                  SwitchWithTitle(label: 'Out patient', switchInpatient: false),
                  const Divider(),
                  SwitchWithTitle(
                      label: 'No Co-payment', switchInpatient: true),
                  const Divider(),
                  SwitchWithTitle(label: 'Dental', switchInpatient: false),
                  const Divider(),
                  SwitchWithTitle(label: 'Optical', switchInpatient: true),
                  const Divider(),
                  SwitchWithTitle(label: 'Maternity', switchInpatient: false),
                  const Divider(),
                  SwitchWithTitle(
                      label: 'Last Expense', switchInpatient: false),
                  const Divider(),
                  SwitchWithTitle(
                      label: 'Personal Accident', switchInpatient: false),
                  const Divider(),
                  SwitchWithTitle(
                      label: 'Enhanced Covid 19 Cover', switchInpatient: false),
                  verticalSpaceMedium
                ],
              ),
            ),
          ),
        ]),
        verticalSpaceRegular
      ]),
    );
  }
}

class SwitchWithTitle extends StatelessWidget {
  const SwitchWithTitle(
      {Key? key, required this.label, required this.switchInpatient})
      : super(key: key);
  final String label;
  final bool switchInpatient;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
        ),
        SwitchBenefits(statusSwitchi: !switchInpatient),
      ],
    );
  }
}

class SwitchBenefits extends StatefulWidget {
  const SwitchBenefits({super.key, required this.statusSwitchi});
  final bool statusSwitchi;

  @override
  State<SwitchBenefits> createState() =>
      _SwitchBenefits(statusSwitch: statusSwitchi);
}

class _SwitchBenefits extends State<SwitchBenefits> {
  bool statusSwitch;

  _SwitchBenefits({required this.statusSwitch});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6, // Adjust the scale factor as needed

      child: Switch(
        value: statusSwitch,
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(() {
            statusSwitch = value;
          });
        },
      ),
    );
  }
}
