import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.hintText,
    required this.labelText,
    this.obsecureText = false,
    this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.validator,
    Key? key,
  }) : super(key: key);

  final String labelText;
  final bool obsecureText;
  final String hintText;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            hintText,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 5.h),
        TextFormField(
          obscureText: obsecureText,
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          focusNode: focusNode,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          cursorHeight: 20,
          decoration: InputDecoration(
            hintText: labelText,
          ),
          validator: validator,
        ),
      ],
    );
  }
}
