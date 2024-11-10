import 'package:dentsulms/common/utils/breakpoints.dart';
import 'package:dentsulms/features/authentication/views/desktop_login_view.dart';
import 'package:dentsulms/features/authentication/views/mobile_login_view.dart';
import 'package:flutter/material.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileLoginView(), desktop: DesktopLoginView());
  }
}
