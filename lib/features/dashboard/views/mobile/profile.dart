import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Column(
                children: [
                  verticalSpaceLarge,
                  SvgPicture.asset(
                    "assets/svgs/logo.svg",
                    width: 90, // Adjust the width as needed
                    height: 60,
                    colorFilter:
                        const ColorFilter.mode(primaryColor, BlendMode.srcIn),
                  ),
                  verticalSpaceLargeExtra,
                  const Text(
                    'Profile coming soon',
                    style:
                        TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
                  ),
                  verticalSpaceSmall,
                  const Text(
                    "A tool that leverage's the power of data and artificial intelligence to drive digital transformation at scale",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w100),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
