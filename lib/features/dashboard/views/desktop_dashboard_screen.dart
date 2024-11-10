import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/breakpoints.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/desktop_app_bar.dart';
import 'package:dentsulms/features/dashboard/views/mobile_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DesktopDashboardView extends StatefulWidget {
  const DesktopDashboardView({
    Key? key,
    this.state,
    this.navigationShell,
  }) : super(key: key);

  final GoRouterState? state;
  final Widget? navigationShell;

  @override
  State<DesktopDashboardView> createState() => _DesktopDashboardViewState();
}

class _DesktopDashboardViewState extends State<DesktopDashboardView> {
  bool isSwitched = false;
  String _activeItem = 'Dashboard';

  void _setActiveItem(String itemName) {
    setState(() {
      _activeItem = itemName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: const MobileDashboardScreen(),
        desktop: Scaffold(
          appBar: appBar,
          body: Container(
            margin: const EdgeInsets.only(top: 60.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: double.infinity,
                      child: Container(
                        margin: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          color: Colors.white, // Set the background color
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0), // Top right corner
                            bottomRight:
                                Radius.circular(20.0), // Bottom right corner
                          ),
                        ),
                        child: ListView(
                          children: [
                            verticalSpaceLarge,
                            MySidebarListItem(
                              icon: 'assets/svgs/home.svg',
                              title: 'Dashboard',
                              onTap: () {
                                _setActiveItem('Dashboard');
                                context.goNamed('dashboard');
                              },
                              isActive: _activeItem == 'Dashboard',
                            ),
                            MySidebarListItem(
                              icon: 'assets/svgs/leads.svg',
                              title: 'Leads',
                              onTap: () {
                                _setActiveItem('Leads');
                                context.go('/dashboard/leads');
                              },
                              isActive: _activeItem == 'Leads',
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                      child: widget.navigationShell,
                    ))
              ],
            ),
          ),
        ));
  }
}

class MySidebarListItem extends StatelessWidget {
  final String icon;
  const MySidebarListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isActive = false,
  });
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: isActive
              ? secondaryColor
              : darkGreyColor, // Adjust the active color
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      leading: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
            isActive ? secondaryColor : darkGreyColor, BlendMode.srcIn),
      ),
      onTap: onTap,
    );
  }
}

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  MyDropdownButtonState createState() => MyDropdownButtonState();
}

class MyDropdownButtonState extends State<MyDropdownButton> {
  String selectedValue = 'Last 1 months'; // Initial selected value

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          side: const BorderSide(width: 1.0, color: greyColor),
          foregroundColor: darkGreyColor),
      onPressed: () {
        // Show the dropdown when the button is pressed
        showDropdown(context);
      },
      child: Row(
        children: [
          Text(selectedValue),
          const Icon(
            Icons.arrow_drop_down,
            color: greyColor,
          ),
        ],
      ),
    );
  }

  void showDropdown(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select an option'),
          content: DropdownButton<String>(
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
                Navigator.pop(
                    context); // Close the dialog after selecting an option
              });
            },
            items: <String>['Last 1 months', 'Last 2 months', 'Last 3 months']
                .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
