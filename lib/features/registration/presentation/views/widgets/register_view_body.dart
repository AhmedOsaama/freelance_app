import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kafeel_test/core/utils/assets.dart';
import 'package:kafeel_test/core/utils/extensions.dart';
import 'package:kafeel_test/core/widgets/custom_text_field.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';
import '../complete_register_screen.dart';

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({super.key});

  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool isObscuring = false;
  var userTypeValue = "Pick Type";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              55.h,
              const Align(alignment: Alignment.centerLeft, child: Text("Register", style: Styles.pageHeader)),
              32.h,
              Image.asset(
                AssetsData.stepper1,
              ),
              30.h,
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(
                    textController: _firstNameController,
                    fieldHeader: 'First Name',
                  )),
                  9.w,
                  Expanded(
                      child: CustomTextField(
                    textController: _lastNameController,
                    fieldHeader: 'Last Name',
                  )),
                ],
              ),
              15.h,
              CustomTextField(
                textController: _emailController,
                fieldHeader: "Email Address",
                keyboardType: TextInputType.emailAddress,
              ),
              15.h,
              CustomTextField(
                // textFieldHeight: 75,
                fieldHeader: "Password",
                textController: _passwordController,
                obscureText: isObscuring,
                suffix: IconButton(
                  // padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  icon: Icon(isObscuring ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isObscuring = !isObscuring;
                    });
                  },
                ),
              ),
              15.h,
              CustomTextField(
                // textFieldHeight: 75,
                fieldHeader: "Confirm Password",
                textController: _confirmPasswordController,
                obscureText: isObscuring,
                suffix: IconButton(
                  visualDensity: VisualDensity.compact,
                  icon: Icon(isObscuring ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isObscuring = !isObscuring;
                    });
                  },
                ),
              ),
              15.h,
              const Text(
                "User Type",
                style: Styles.textStyle12,
              ),
              8.h,
              DropdownButtonFormField(
                value: userTypeValue,
                items: const [
                  DropdownMenuItem(
                      value: "Pick Type",
                      child: Text(
                        "Pick Type",
                        style: Styles.textStyle14,
                      )),
                  DropdownMenuItem(
                      value: "Buyer",
                      child: Text(
                        "Buyer",
                        style: Styles.textStyle14,
                      )),
                  DropdownMenuItem(
                      value: "Seller",
                      child: Text(
                        "Seller",
                        style: Styles.textStyle14,
                      )),
                  DropdownMenuItem(
                      value: "Both",
                      child: Text(
                        "Both",
                        style: Styles.textStyle14,
                      )),
                ],
                onChanged: (value) {
                  setState(() {
                    userTypeValue = value!;
                  });
                },
                icon: Icon(Icons.keyboard_arrow_down),
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              55.h,
              Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => CompleteRegisterScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        fixedSize: const Size(150, 56),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        "Next",
                        style: Styles.buttonTextStyle,
                      ))),
              20.h
            ],
          ),
        ),
      ),
    );
  }
}
