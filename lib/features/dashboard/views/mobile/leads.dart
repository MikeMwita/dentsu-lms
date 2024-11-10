import 'package:dentsulms/common/utils/colors.dart';
import 'package:dentsulms/features/dashboard/components/final_table.dart';
import 'package:dentsulms/features/dashboard/components/horizontal_card_list.dart';
import 'package:dentsulms/features/dashboard/components/lead_data_table_mobile.dart';
import 'package:flutter/material.dart';

class Leads extends StatefulWidget {
  const Leads({Key? key}) : super(key: key);

  @override
  _Leads createState() => _Leads();
}

class _Leads extends State<Leads> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Leads',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20.0), // Set the border radius here
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(colorAccountChart),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add,
                            color: textColor,
                          ), // Replace with your desired icon
                          SizedBox(
                              width:
                                  8.0), // Add some space between the icon and text
                          Text(
                            'New lead',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ), // Replace with your button text
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: greyColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
          const Card(
              margin: EdgeInsets.all(12),
              child: SingleChildScrollView(child: const LeadDataTable()))
        ],
      ),
    );
  }
}
