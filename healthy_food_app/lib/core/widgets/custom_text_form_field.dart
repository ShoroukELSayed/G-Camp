import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.validator,
    required this.onChanged,  
  });
  final String? Function(String?) validator;
  final void Function(String?) onChanged;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black38),
      ),
    );
  }
}
