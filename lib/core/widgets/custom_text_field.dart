import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.textController, this.keyboardType, this.obscureText = false, this.suffix, required this.fieldHeader, this.textFieldHeight});
  final TextEditingController textController;
  final TextInputType? keyboardType;
  final bool obscureText;
  final IconButton? suffix;
  final String fieldHeader;
  final double? textFieldHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          fieldHeader,
          style: Styles.textStyle12,
        ),
        Container(
          height: textFieldHeight,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextFormField(
            controller: textController,
            keyboardType: keyboardType,
            obscureText: obscureText,
            validator: (value){return;},
            decoration: InputDecoration(
              isDense: true,
                suffix: suffix,
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              fillColor: Colors.grey[200],
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
