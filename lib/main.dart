
import 'package:ebadel/shared/styles/themes.dart';
import 'package:flutter/material.dart';
import 'modules/login_screen.dart';
import 'modules/registration_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //this is for hidden the red label at the corner
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: RegistrationScreen(),
    );
  }
}
