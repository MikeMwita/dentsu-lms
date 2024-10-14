import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:flutter/material.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpaceLarge,
        const Divider(),
        verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "© 2022 Dentsu.com",
              style: TextStyle(
                color: Color(0xFF545454),
                // decoration: TextDecoration.underline,
              ),
            ),
            horizontalSpaceLarge,
            const Text(
              "Help",
              style: TextStyle(
                color: Color(0xFF545454),
                // decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        verticalSpaceRegular
      ],
    );
  }
}
