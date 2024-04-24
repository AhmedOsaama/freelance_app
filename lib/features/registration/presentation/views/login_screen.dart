import 'package:flutter/material.dart';
import 'package:kafeel_test/core/utils/styles.dart';

import 'widgets/login_view_body.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const LoginScreenBody(),
    );
  }
}
