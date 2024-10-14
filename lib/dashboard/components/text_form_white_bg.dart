// import 'dart:ffi';

import 'package:dentsu_app/common/helpers/spacing.dart';
import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFormWhiteBg extends StatelessWidget {
  TextFormWhiteBg(
      {Key? key,
      required this.label,
      required this.width,
      this.hint,
      this.value})
      : super(key: key);

  final String label;
  final String? value;
  final double width;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
          child: Text(
            label,
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
      SizedBox(
        width: width,
        height: 50,
        child: TextFormField(
          initialValue: value,
          decoration: InputDecoration(
            hintText: hint,
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
        ),
      )
    ]);
  }
}
