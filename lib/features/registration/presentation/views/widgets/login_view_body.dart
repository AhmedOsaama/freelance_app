import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kafeel_test/core/utils/assets.dart';
import 'package:kafeel_test/core/utils/constants.dart';
import 'package:kafeel_test/core/utils/extensions.dart';
import 'package:kafeel_test/core/utils/styles.dart';
import 'package:kafeel_test/core/widgets/custom_text_field.dart';

import '../register_screen.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  var rememberMe = false;

  var isObscuring = true;
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
              const Align(alignment: Alignment.centerLeft, child: Text("Account Login", style: Styles.pageHeader)),
              32.h,
              Center(
                  child: Image.asset(
                AssetsData.loginImage,
                width: 225,
                height: 225,
              )),
              20.h,

              CustomTextField(
                fieldHeader: "Email Address",
                textController: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              18.h,
              CustomTextField(
                textFieldHeight: 75,
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
              10.h,
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    activeColor: Color(0xff1DBF73),
                      value: rememberMe,
                      onChanged: (_) {
                        setState(() {
                          rememberMe = !rememberMe;
                        });
                      }),
                  const Text(
                    "Remember me",
                    style: Styles.textStyle12,
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: Styles.textStyle12,
                      )),
                ],
              ),
              35.h,
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    fixedSize: const Size(335, 56),
                  ),
                  child: const Text(
                    "Login",
                    style: Styles.buttonTextStyle,
                  )),
              24.h,
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Don’t have an account ?",
                      style: Styles.textStyle14,
                    ),
                    5.h,
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => RegisterScreen()));
                    }, child: Text(
                      "Register",
                      style: Styles.textStyle14.copyWith(color: const Color(0xFF1DBF73)),
                    )),

                  ],
                ),
              ),
              50.h,
            ],
          ),
        ),
      ),
    );
  }
}
