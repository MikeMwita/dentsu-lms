import 'package:dentsulms/common/utils/breakpoints.dart';
import 'package:dentsulms/features/dashboard/views/desktop_dashboard_screen.dart';
import 'package:dentsulms/features/dashboard/views/mobile_dashboard_screen.dart';
import 'package:flutter/material.dart';

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({Key? key}) : super(key: key);

  @override
  DashboardLayoutState createState() => DashboardLayoutState();
}

class DashboardLayoutState extends State<DashboardLayout> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileDashboardScreen(), desktop: DesktopDashboardView());
  }
}
