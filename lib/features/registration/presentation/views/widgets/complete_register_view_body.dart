import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kafeel_test/core/utils/assets.dart';
import 'package:kafeel_test/core/utils/extensions.dart';
import 'package:kafeel_test/core/utils/styles.dart';
import 'package:kafeel_test/core/widgets/custom_text_field.dart';

class CompleteRegisterScreenBody extends StatefulWidget {
  const CompleteRegisterScreenBody({super.key});

  @override
  State<CompleteRegisterScreenBody> createState() => _CompleteRegisterScreenBodyState();
}

class _CompleteRegisterScreenBodyState extends State<CompleteRegisterScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final _aboutController = TextEditingController();
  final _birthDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              55.h,
              const Align(alignment: Alignment.centerLeft, child: Text("Register", style: Styles.pageHeader)),
              32.h,
              Image.asset(AssetsData.stepper2),
              CustomTextField(textController: _aboutController, fieldHeader: "About", maxLines: 5,),
              CustomTextField(
                textController: _birthDateController,
                fieldHeader: "Birth Date",
                suffix: IconButton(
                    onPressed: () async {
                      var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1930),
                          lastDate: DateTime.now());
                      // _birthDateController.text = DateFormat().add().format(date!);
                      print(date.toString());
                    },
                    icon: Icon(Icons.calendar_month_outlined)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
