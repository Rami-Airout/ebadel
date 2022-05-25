import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class validationModel{
  String? value;
  String? error;
  validationModel(this.value,this.error);
}

class FormProvider extends ChangeNotifier{
  validationModel _email=validationModel(null,null);
  validationModel _password=validationModel(null,null);
  validationModel _phone=validationModel(null,null);
  validationModel _name=validationModel(null,null);
  validationModel get email => _email;
  validationModel get password => _password;
  validationModel get phone => _phone;
  validationModel get name => _name;

void ValidateEmail(String? val){
  if(val!=null && val.isValidEmail)
    {
      _email = validationModel(val,null);
    }
  else
    {
      _email = validationModel(null,"please Enter a Valid Email");
    }
  notifyListeners();
}
void validatePassword(String? val){
  if(val!=null && val.isValidPassword)
  {
    _password = validationModel(val,null);
  }
  else
  {
    _password = validationModel(null,"password must contain 8 character");
  }
  notifyListeners();
}
  void validateName(String? val){
    if(val!=null && val.isValidName)
    {
      _name = validationModel(val,null);
    }
    else
    {
      _name = validationModel(null,"Name con not be empty");
    }
    notifyListeners();
  }
  void validatePhone(String? val){
    if(val!=null && val.isValidPhone)
    {
      _phone = validationModel(val,null);
    }
    else
    {
      _phone = validationModel(null,"phone must contain 10 character");
    }
    notifyListeners();
  }
}

extension extString on String{
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
    return passwordRegExp.hasMatch(this);
  }
  // ^\+?0[0-9]{10}$
  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{10,}$");
    return phoneRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }
}
