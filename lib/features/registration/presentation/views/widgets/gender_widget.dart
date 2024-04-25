import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget({super.key, required this.selectedGender, required this.selectGender});
  final String selectedGender;
  final Function(String) selectGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Gender",
          style: Styles.textStyle12,
        ),
        Row(
          children: [
            RadioTheme(
              data: RadioThemeData(fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return buttonColor;
                }
                return Colors.grey;
              })),
              child: RadioMenuButton(
                  value: "Male",
                  groupValue: selectedGender,
                  onChanged: (value) => selectGender(value!),
                  child: const Text(
                    "Male",
                    style: Styles.textStyle14,
                  )),
            ),
            RadioTheme(
              data: RadioThemeData(fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return buttonColor;
                }
                return Colors.grey;
              })),
              child: RadioMenuButton(
                  value: "Female",
                  groupValue: selectedGender,
                  onChanged: (value) => selectGender(value!),
                  child: const Text(
                    "Female",
                    style: Styles.textStyle14,
                  )),
            ),
          ],
        )
      ],
    );
  }
}
