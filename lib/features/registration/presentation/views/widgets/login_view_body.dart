import 'package:flutter/material.dart';
import 'package:kafeel_test/core/utils/assets.dart';
import 'package:kafeel_test/core/utils/constants.dart';
import 'package:kafeel_test/core/utils/extensions.dart';
import 'package:kafeel_test/core/utils/styles.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  var _emailController = TextEditingController();

  var rememberMe = false;

  var isObscuring = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          55.h,
          Align(
            alignment: Alignment.centerLeft,
              child: const Text("Account Login", style: Styles.pageHeader)),
          Image.asset(AssetsData.loginImage),
          20.h,
          Text("Email Address", style: Styles.textStyle12,),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              fillColor: textBoxColor,
              filled: true,
            ),
          ),
          Text("Password", style: Styles.textStyle12,),
          TextFormField(
            controller: _emailController,
            obscureText: isObscuring,
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: Icon(isObscuring ? Icons.visibility_off : Icons.visibility)
            ),
          ),
          10.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(value: rememberMe, onChanged: (_){
                setState(() {
                rememberMe = !rememberMe;
                });
              }),
              const Text("Remember me", style: Styles.textStyle12,),
              TextButton(onPressed: (){}, child: const Text("Forgot Password?", style: Styles.textStyle12,)),
            ],
          ),
          35.h,
          ElevatedButton(onPressed: (){}, child: const Text("Login", style: Styles.buttonTextStyle,)),
          24.h,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Don’t have an account ?", style: Styles.textStyle14,),
              5.h,
              Text("Register", style: Styles.textStyle14.copyWith(color: const Color(0xFF1DBF73)),)
            ],
          ),

        ],
      ),
    );
  }
}
