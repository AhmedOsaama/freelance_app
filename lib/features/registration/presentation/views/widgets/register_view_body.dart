import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kafeel_test/core/utils/extensions.dart';
import 'package:kafeel_test/core/widgets/custom_text_field.dart';

import '../../../../../core/utils/styles.dart';

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              55.h,
              const Align(alignment: Alignment.centerLeft, child: Text("Register", style: Styles.pageHeader)),
              32.h,
              //TODO: Stepper
              Row(
                children: [
                  Expanded(child: CustomTextField(textController: _firstNameController, fieldHeader: 'First Name',)),
                  9.w,
                  Expanded(child: CustomTextField(textController: _lastNameController, fieldHeader: 'Last Name',)),
                ],
              ),
              15.h,
              CustomTextField(textController:  _emailController, fieldHeader: "Email Address"),
              15.h,
              CustomTextField(textController: _passwordController, fieldHeader: "Password"),
              15.h,
              CustomTextField(textController: _confirmPasswordController, fieldHeader: "Confirm Password"),
              15.h,
              const Text("User Type", style: Styles.textStyle12,),
              DropdownButtonFormField(items: [], onChanged: (_){}),
            ],
          ),
        ),
      ),
    );
  }
}
