import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget{
  const CustomFormField({
    required this.label,
    this.errorText,
    this.iconData,
    required this.inputType,
    required this.validator,
    this.onChanged,
});
  final String? errorText;
  final String? label;
  final IconData? iconData;
  final TextInputType inputType;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      keyboardType: inputType,
      decoration: InputDecoration(
          labelText: label,
          suffixIcon: Icon(iconData),
           ),
       );}

   }

