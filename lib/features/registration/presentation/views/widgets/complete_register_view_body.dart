import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kafeel_test/core/utils/assets.dart';
import 'package:kafeel_test/core/utils/constants.dart';
import 'package:kafeel_test/core/utils/extensions.dart';
import 'package:kafeel_test/core/utils/styles.dart';
import 'package:kafeel_test/core/widgets/custom_text_field.dart';
import 'package:kafeel_test/features/registration/presentation/views/widgets/gender_widget.dart';
import 'package:kafeel_test/features/registration/presentation/views/widgets/salary_field.dart';

class CompleteRegisterScreenBody extends StatefulWidget {
  const CompleteRegisterScreenBody({super.key});

  @override
  State<CompleteRegisterScreenBody> createState() => _CompleteRegisterScreenBodyState();
}

class _CompleteRegisterScreenBodyState extends State<CompleteRegisterScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final _aboutController = TextEditingController();
  final _birthDateController = TextEditingController();

  var salary = 1000;

  var selectedGender = "Male";

  var isFavFacebook = false;
  var isFavTwitter = false;
  var isFavLinkedIn = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              55.h,
              const Align(alignment: Alignment.centerLeft, child: Text("Register", style: Styles.pageHeader)),
              32.h,
              Image.asset(AssetsData.stepper2),
              CustomTextField(textController: _aboutController, fieldHeader: "About", maxLines: 5,),
              SalaryField(
                salary: salary,
                onIncrement: (){
                    setState(() {
                      salary += 500;
                    });
                },
                onDecrement: (){
                  setState(() {
                    salary -= 500;
                  });
                },
              ),
              CustomTextField(
                textController: _birthDateController,
                fieldHeader: "Birth Date",
                suffix: IconButton(
                    onPressed: () async {
                      var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1945),
                          lastDate: DateTime.now());
                      _birthDateController.text = date.toString().split(' ')[0];
                    },
                    icon: Icon(Icons.calendar_month_outlined)),
              ),
              GenderWidget(selectedGender: selectedGender, selectGender: (value){
                setState(() {
                  selectedGender = value;
                });
              }),
              16.h,
              Text("Favourite Social Media", style: Styles.textStyle12,),
              CheckboxMenuButton(value: isFavFacebook, onChanged: (value){
                setState(() {
                  isFavFacebook = value!;
                });
              }, child: Text("Facebook", style: Styles.textStyle14,),
              ),
              CheckboxMenuButton(value: isFavTwitter, onChanged: (value){
                setState(() {
                  isFavTwitter = value!;
                });
              }, child: Text("Twitter", style: Styles.textStyle14,),
              ),
              CheckboxMenuButton(value: isFavLinkedIn, onChanged: (value){
                setState(() {
                  isFavLinkedIn = value!;
                });
              }, child: Text("LinkedIn", style: Styles.textStyle14,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
