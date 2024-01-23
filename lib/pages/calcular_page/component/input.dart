// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboard;
  final String? Function(String?) validator;
  const Input({
    Key? key,
    required this.controller,
    required this.label,
    required this.keyboard,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        validator: validator,
        keyboardType: keyboard,
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
        ),
      ),
    );
  }
}
