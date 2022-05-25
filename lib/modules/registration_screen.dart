import 'package:ebadel/modules/tst.dart';
import 'package:ebadel/shared/component/validation.dart';
import 'package:ebadel/shared/component/buttonreuse.dart';
import 'package:ebadel/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import '../shared/component/textfield.dart';

class RegistrationScreen extends StatefulWidget {

  @override
  _RegistrationScreen createState() => _RegistrationScreen();
}
class _RegistrationScreen extends State<RegistrationScreen> {
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
                    Text("Sign up",
                      style: TextStyle(
                        color: TxtColor ,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("creat an acoount here",
                      style:TextStyle(
                        fontSize: 15.0,
                        // fontWeight: FontWeight.bold,
                      ) ,),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomFormField(
                      label: 'Name',
                      inputType: TextInputType.name,
                      validator: (val) {
                        if (val!.isValidName) {
                          return null;
                        }
                        return 'Enter valid name';
                      },
                    ),
                    SizedBox(
                      height: 20.0,
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
                      label: 'Phone',
                     inputType: TextInputType.phone,
                      validator: (val) {
                        if (val!.isValidPhone){
                          return null;
                        }
                        return 'Enter valid phone';
                      },
                    ),
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
                    // CustomImageFormField(
                    //   validator: (val) {
                    //     if (val == null) return 'Pick a picture';
                    //   },
                    //   onChanged: (_file) {},
                    // ),
                    CustomFormField(
                      label: 'Confirm Password',
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
                    SizedBox(height: 30.0,),
                    ButtonReuse(
                        onPressed: (){
                          _formKey.currentState!.validate();
                        },
                        text: "Sign up"),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have account?",
                        style: TextStyle(
                          fontSize:15.0,
                        ),),
                        TextButton(
                          onPressed: () {},
                          child: const Text('SIGN IN'),
                          style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Colors.transparent,
                              textStyle:
                              TextStyle(
                                  fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                  )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    //efsfsf
  }
}

// ButtonReuse(
// onPressed: () {
// _formKey.currentState!.validate();
// },text: "Sign up"),