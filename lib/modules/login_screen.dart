import 'package:ebadel/shared/component/validation.dart';
import 'package:ebadel/shared/component/buttonreuse.dart';
import 'package:ebadel/shared/styles/colors.dart';
import 'package:flutter/material.dart';

import '../shared/component/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreen createState() => _LoginScreen();
}
class _LoginScreen extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text("Welcome",
                    style: TextStyle(
                      color: TxtColor ,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Sign in to continue",
                      style:TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ) ,),
                    SizedBox(
                      height: 30.0,
                    ),
                    CustomFormField(
                        label: "Email",
                          inputType: TextInputType.emailAddress,
                          validator: (val) {
                                  if (val!.isValidEmail) {
                                    return null;
                                  }
                                  return 'Enter valid email';
                                },),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomFormField(
                      label: 'Password',
                      iconData: Icons.remove_red_eye_outlined,
                      inputType: TextInputType.visiblePassword,
                      onChanged: (value){
                        if(value!.isValidPassword){
                          return null;
                        }
                        else{
                          return '8 chracterat at least one uppercase and special character';
                        }
                      },
                      validator: (val) {
                        if (val!.isValidPassword){
                          return null;
                        }
                        return '8 chracterat at least one uppercase and special character';
                      },
                    ),
                    SizedBox(height: 20.0,),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.transparent,
                          textStyle:
                          TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(height: 20.0,),
                    ButtonReuse(
                        onPressed: () {
                            _formKey.currentState!.validate();
                          },text: "Log in"),
                    SizedBox(height: 20.0,),
                    TextButton(
                      onPressed: () {},
                      child: const Text('SIGN UP'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.transparent,
                          textStyle:
                           TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}