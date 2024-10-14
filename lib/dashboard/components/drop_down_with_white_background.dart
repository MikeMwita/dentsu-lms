import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';

class DropDownWithWhiteBackground extends StatefulWidget {
  DropDownWithWhiteBackground(
      {required this.label, required this.items, required this.selectedValue});
  final String label;
  final List<String> items;
  final String selectedValue;
  @override
  DropDownWithWhiteBackgroundState createState() =>
      DropDownWithWhiteBackgroundState(
          label: label, items: items, selectedValue: selectedValue);
}

class DropDownWithWhiteBackgroundState
    extends State<DropDownWithWhiteBackground> {
  DropDownWithWhiteBackgroundState(
      {required this.label, required this.items, required this.selectedValue});
  late String label;
  late List<String> items;
  late String selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.bottomStart,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Text(
              label,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: Color(0xFF545454),
                  fontWeight: FontWeight.w700,
                  fontSize: 14
                  // decoration: TextDecoration.underline,
                  ),
            ),
          ),
        ),
        verticalSpaceSmall,
        Container(
          height: 60,
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10.0, // Adjust horizontal padding
                vertical: 5.0, // Adjust vertical padding
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              fillColor: Colors.white,
              filled: true,
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
            elevation: 0,
            isExpanded: true,
            icon: const Icon(Icons.arrow_drop_down),
            style: const TextStyle(color: Colors.black),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
            items: items.map((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}