// ignore_for_file: unused_import

import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_desktop.dart';
import 'package:dentsulms/features/dashboard/components/line_cartesian_chart.dart';
import 'package:dentsulms/features/dashboard/components/horizontal_card_list.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_mobile.dart';
import 'package:dentsulms/features/dashboard/components/mobile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MobileDashboardScreen extends StatefulWidget {
  const MobileDashboardScreen({
    Key? key,
    this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell? navigationShell;

  @override
  MobileDashboardScreenState createState() => MobileDashboardScreenState();
}

class MobileDashboardScreenState extends State<MobileDashboardScreen> {
  int selectedTab = 0;

  changeTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: widget.navigationShell,
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            currentIndex: widget.navigationShell!.currentIndex,
            showSelectedLabels: false, // Hide labels for the selected item
            showUnselectedLabels: false,
            onTap: _onTap,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svgs/home.svg',
                    width: 24,
                    height: 24,
                    colorFilter: selectedTab == 0
                        ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
                        : const ColorFilter.mode(greyColor, BlendMode.srcIn),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svgs/people.svg',
                    width: 24,
                    height: 24,
                    colorFilter: selectedTab == 1
                        ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
                        : const ColorFilter.mode(greyColor, BlendMode.srcIn),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svgs/bag.svg',
                    width: 24,
                    height: 24,
                    colorFilter: selectedTab == 2
                        ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
                        : const ColorFilter.mode(greyColor, BlendMode.srcIn),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svgs/person.svg',
                    colorFilter: selectedTab == 3
                        ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
                        : const ColorFilter.mode(greyColor, BlendMode.srcIn),
                  ),
                  label: "Home"),
            ],
          )),
    );
  }

  void _onTap(index) {
    // print(index);
    changeTab(index);
    widget.navigationShell?.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell!.currentIndex,
    );
  }
}

// class ScaffoldWithNavbar extends StatelessWidget {
//   const ScaffoldWithNavbar({
//     Key? key,
//     this.state,
//     this.navigationShell,
//   }) : super(key: key);

//   final GoRouterState? state;
//   final StatefulNavigationShell? navigationShell;

//   // const ScaffoldWithNavbar(this.navigationShell, {super.key});

//   // /// The navigation shell and container for the branch Navigators.
//   // final StatefulNavigationShell navigationShell;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: navigationShell,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: navigationShell!.currentIndex,
//         items: [
//           BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svgs/home.svg',
//                 width: 24,
//                 height: 24,
//                 colorFilter: _selectedTab == 0
//                     ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
//                     : const ColorFilter.mode(greyColor, BlendMode.srcIn),
//               ),
//               label: "Home"),
//           BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svgs/people.svg',
//                 width: 24,
//                 height: 24,
//                 colorFilter: _selectedTab == 1
//                     ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
//                     : const ColorFilter.mode(greyColor, BlendMode.srcIn),
//               ),
//               label: "Home"),
//           BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svgs/bag.svg',
//                 width: 24,
//                 height: 24,
//                 colorFilter: _selectedTab == 2
//                     ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
//                     : const ColorFilter.mode(greyColor, BlendMode.srcIn),
//               ),
//               label: "Home"),
//           BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svgs/person.svg',
//                 colorFilter: _selectedTab == 3
//                     ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
//                     : const ColorFilter.mode(greyColor, BlendMode.srcIn),
//               ),
//               label: "Home"),
//         ],
//         onTap: _onTap,
//       ),
//     );
//   }

//   void _onTap(index) {
//     navigationShell?.goBranch(
//       index,
//       // A common pattern when using bottom navigation bars is to support
//       // navigating to the initial location when tapping the item that is
//       // already active. This example demonstrates how to support this behavior,
//       // using the initialLocation parameter of goBranch.
//       initialLocation: index == navigationShell!.currentIndex,
//     );
//   }
// }