import 'package:flutter/material.dart';
import 'package:kafeel_test/core/utils/constants.dart';
import 'package:kafeel_test/features/registration/presentation/views/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kafeel_test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith((states){
            if (states.contains(MaterialState.selected)) {
              return buttonColor;
            }
            return Colors.white;
          }),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}