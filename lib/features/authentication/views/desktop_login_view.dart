import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class DesktopLoginView extends ConsumerStatefulWidget {
  const DesktopLoginView({Key? key}) : super(key: key);

  @override
  ConsumerState<DesktopLoginView> createState() => _DesktopLoginViewState();
}

class _DesktopLoginViewState extends ConsumerState<DesktopLoginView> {
  bool isChecked = false;
  var _isSending = false;

  final TextEditingController _emailController =
      TextEditingController(text: 'charlesk@dentsu.com');

  final TextEditingController _passwordController =
      TextEditingController(text: '12345678');

  void signInWithEmail() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    if (email.isNotEmpty && password.isNotEmpty) {
      setState(() {
        _isSending = true;
      });
      ref
          .read(authControllerProvider)
          .signInWithEmailDesktop(context, email, password);
    } else {
      setState(() {
        _isSending = false;
      });
      showSnackBar(context: context, content: 'Fill out all the fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        child: ListView(children: [
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
                                    fontWeight: FontWeight.w700),
                              ),
                              verticalSpaceSmall,
                              const SizedBox(
                                width: 540.0,
                                child: Text(
                                  "A tool that leverage's the power of data and artificial intelligence to drive digital transformation at scale",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400),
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
                                      // decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 540.0,
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your email or Username',
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
                                      // decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 540.0,
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Password',
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
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "Keep me logged in",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            // decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "Forgot password?",
                                      style: TextStyle(
                                        color: secondaryColor,
                                        fontWeight: FontWeight.bold,
                                        // decoration: TextDecoration.underline,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              verticalSpaceMedium,
                              SizedBox(
                                width: 540.0,
                                child: ElevatedButton(
                                  onPressed: signInWithEmail,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        appBarColor, // Set the background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          90.0), // Set the border radius
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    // child: Text(
                                    //   'Log In',
                                    //   style: TextStyle(
                                    //     fontSize: 16.0,
                                    //     color: Colors.white,
                                    //   ),
                                    // ),
                                    child: _isSending
                                        ? const SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2.0,
                                              color: Colors.white,
                                            ),
                                          )
                                        : const Text(
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
                              // decoration: TextDecoration.underline,
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                "Privacy Policy",
                                style: TextStyle(
                                  color: Color(0xFF545454),
                                  // decoration: TextDecoration.underline,
                                ),
                              ),
                              horizontalSpaceLarge,
                              const Text(
                                "Terms & Conditions",
                                style: TextStyle(
                                  color: Color(0xFF545454),
                                  // decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Center(
                  child: SizedBox(
                      child: Container(
                    width: 680.0,
                    height: 740.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/background_image.png'), // Replace with your image asset path
                        fit:
                            BoxFit.fill, // Adjust the BoxFit property as needed
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
                          )
                        ]),
                  )),
                ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
