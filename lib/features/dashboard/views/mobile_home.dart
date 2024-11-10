import 'package:dentsulms/features/dashboard/components/horizontal_card_list.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_desktop.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_mobile.dart';
import 'package:flutter/material.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  MobileHomeState createState() => MobileHomeState();
}

class MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'Dashboard',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          HorizontalCardList(),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 24, 0, 12),
            child: Text(
              'New leads',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Card(margin: EdgeInsets.all(12), child: LeadDataTable())
        ],
      ),
    );
  }
}
