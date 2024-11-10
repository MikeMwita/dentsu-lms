import 'package:dentsulms/common/helpers/spacing.dart';
import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/desktop_lead_tabs.dart';
import 'package:flutter/material.dart';

class LeadsTab extends StatefulWidget {
  const LeadsTab({Key? key}) : super(key: key);

  @override
  _LeadsTabState createState() => _LeadsTabState();
}

class _LeadsTabState extends State<LeadsTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          verticalSpaceMedium,
          const TabBar(
            isScrollable: true,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 2.0,
                color: secondaryColor,
              ),
            ),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.0,
            ),
            labelColor: secondaryColor,
            tabAlignment: TabAlignment.start,
            indicatorPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                text: 'Lead Details',
              ),
              Tab(text: 'Assigned Deals'),
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: [
                LeadDetails(),
                AssignedLead(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
