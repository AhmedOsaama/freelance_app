import 'package:flutter/material.dart';
import 'package:kafeel_test/core/utils/extensions.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class SalaryField extends StatelessWidget {
  SalaryField({super.key, required this.salary, required this.onIncrement, required this.onDecrement});
  final int salary;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Salary", style: Styles.textStyle12,),
        8.h,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: onIncrement,
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder()
                  ),
                  child: const Icon(Icons.remove, color: buttonColor,)),
              Text("SAR $salary", style: Styles.textStyle16,),
              ElevatedButton(
                  onPressed: onDecrement,
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder()
                  ),
                  child: const Icon(Icons.add, color: buttonColor,)),
            ],
          ),
        )
      ],
    );
  }
}
