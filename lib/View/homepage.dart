// import 'package:dentsu_app/common/utils/colors.dart';
// import 'package:dentsu_app/common/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:flutter_svg/svg.dart';

class DesktopLoginView extends StatelessWidget {
  const DesktopLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/logo.svg',
                            height: 32.0,
                          ),
                          verticalSpaceSmall,
                          const Divider(),
                          verticalSpaceLarge,
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Welcome to Dentsu LMS',
                                    style: TextStyle(
                                      color: appBarColor,
                                      fontSize: 48.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  verticalSpaceSmall,
                                  const SizedBox(
                                    width: 540.0,
                                    child: Text(
                                      "A tool that leverages the power of data and artificial intelligence to drive digital transformation at scale",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  verticalSpaceMedium,
                                  const SizedBox(
                                    width: 540.0,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 8, 0, 4),
                                      child: Text(
                                        "Username",
                                        style: TextStyle(
                                          color: Color(0xFF545454),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 540.0,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: 'Enter your email or Username',
                                      ),
                                    ),
                                  ),
                                  verticalSpaceSmall,
                                  const SizedBox(
                                    width: 540.0,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 8, 0, 4),
                                      child: Text(
                                        "Password",
                                        style: TextStyle(
                                          color: Color(0xFF545454),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 540.0,
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        hintText: 'Enter your Password',
                                      ),
                                    ),
                                  ),
                                  verticalSpaceRegular,
                                  SizedBox(
                                    width: 540.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: false,
                                              onChanged: (bool? value) {},
                                            ),
                                            const Text(
                                              "Keep me logged in",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          "Forgot password?",
                                          style: TextStyle(
                                            color: secondaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  verticalSpaceMedium,
                                  SizedBox(
                                    width: 540.0,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: appBarColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(90.0),
                                        ),
                                      ),
                                      child: const Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Log In',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 120.0,
                          ),
                          const Divider(),
                          verticalSpaceSmall,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "© 2023 Dentsu.com",
                                style: TextStyle(
                                  color: Color(0xFF545454),
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Privacy Policy",
                                    style: TextStyle(
                                      color: Color(0xFF545454),
                                    ),
                                  ),
                                  horizontalSpaceLarge,
                                  const Text(
                                    "Terms & Conditions",
                                    style: TextStyle(
                                      color: Color(0xFF545454),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        child: Container(
                          width: 680.0,
                          height: 740.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/background_image.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                                child: SvgPicture.asset(
                                  "assets/svgs/login.svg",
                                ),
                              ),
                              const SizedBox(
                                height: 100.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
