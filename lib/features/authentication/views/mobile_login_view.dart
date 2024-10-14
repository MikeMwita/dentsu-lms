import 'package:dentsulms/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileLoginView extends ConsumerStatefulWidget {
  const MobileLoginView({Key? key}) : super(key: key);

  @override
  ConsumerState<MobileLoginView> createState() => _MobileLoginViewState();
}

class _MobileLoginViewState extends ConsumerState<MobileLoginView> {
  bool isChecked = false;
  var _isSending = false;

  final TextEditingController _emailController =
      TextEditingController(text: "charlesk@dentsu.com");

  final TextEditingController _passwordController =
      TextEditingController(text: "1234556");

  void signInWithEmail() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    if (email.isNotEmpty && password.isNotEmpty) {
      setState(() {
        _isSending = true;
      });
      ref
          .read(authControllerProvider)
          .signInWithEmail(context, email, password);
    } else {
      setState(() {
        _isSending = false;
      });
      showSnackBar(context: context, content: 'Please fill in all fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
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
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  verticalSpaceLargeExtra,
                  const Text(
                    'Welcome to Dentsu LMS',
                    style: TextStyle(
                        color: textColor,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600),
                  ),
                  verticalSpaceSmall,
                  const Text(
                    "A tool that leverage's the power of data and artificial intelligence to drive digital transformation at scale",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w100),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
              verticalSpaceLarge,
              Column(
                children: [
                  const Text("Username",
                      style: TextStyle(
                        fontSize: 16,
                        color: textColor,
                        fontWeight: FontWeight.w700,
                      )),
                  verticalSpaceSmall,
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Set the background color here
                  borderRadius:
                      BorderRadius.circular(5.0), // Set the border radius here
                ),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email or Username',
                    border: InputBorder.none, // Remove the default border
                    contentPadding: EdgeInsets.all(
                        16.0), // Adjust content padding as needed
                  ),
                ),
              ),
              verticalSpaceMedium,
              Column(
                children: [
                  const Text("Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: textColor,
                        fontWeight: FontWeight.w700,
                      )),
                  verticalSpaceSmall,
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Set the background color here
                  borderRadius:
                      BorderRadius.circular(5.0), // Set the border radius here
                ),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    border: InputBorder.none, // Remove the default border
                    contentPadding: EdgeInsets.all(
                        16.0), // Adjust content padding as needed
                  ),
                ),
              ),
              verticalSpaceSmall,
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },

                    side: const BorderSide(
                      color: Colors.white, // Set the border color to red
                      width: 2.0, // Set the border width
                    ),
                    activeColor:
                        primaryColor, // Set the color of the checkbox when checked
                  ),
                  const Text(
                    "Keep me logged in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              verticalSpaceMedium,
              SizedBox(
                width: 540.0,
                child: ElevatedButton(
                  // onPressed: () => context.goNamed('dashboard_mobile'),
                  onPressed: signInWithEmail,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Set the background color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(90.0), // Set the border radius
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: _isSending
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                            ),
                          )
                        : const Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: primaryColor,
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
