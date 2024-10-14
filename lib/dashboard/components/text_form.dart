import 'package:dentsu_app/common/utils/colors.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm(
      {Key? key, required this.label, required this.width, this.hint})
      : super(key: key);

  final String label;
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
              // decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
      SizedBox(
        width: width,
        child: TextFormField(
          // controller: '',
          decoration: InputDecoration(
            hintText: hint,
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
