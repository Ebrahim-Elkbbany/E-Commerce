import 'package:ecommerce/constant.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.controller,
      this.isPassword = false,
      this.type,
      this.isClickable = true,
      this.onSubmit,
      this.onChange,
      this.onTap,
      this.validate,
      this.hintText,
      this.suffix,
      this.suffixPressed,
      this.maxLines = 1,
      this.disabledBorderColor = const Color(0xffF4F4F4),
      this.enabledBorderColor = const Color(0xffF4F4F4),
      this.focusedBorderColor = kPrimaryColor,
      this.fillColor = Colors.black12,
      this.boarderRadius = 8,
      this.prefix,
      this.prefixColor,
      this.labelText})
      : super(key: key);

  final TextEditingController? controller;
  final TextInputType? type;
  final void Function(String)? onSubmit;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final bool isPassword;
  final String? Function(String?)? validate;
  final String? hintText;
  final String? labelText;
  final IconData? suffix;
  final IconData? prefix;
  final void Function()? suffixPressed;
  final bool isClickable;
  final int maxLines;
  final double boarderRadius;
  final Color disabledBorderColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final Color fillColor;
  final Color? prefixColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      maxLines: maxLines,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        prefixIcon: prefix != null
            ? Icon(
                prefix,
                color: prefixColor,
                size:20.w ,
              )
            : null,
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(boarderRadius),
            borderSide: BorderSide(
              color: disabledBorderColor,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(boarderRadius),
            borderSide: BorderSide(color: enabledBorderColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(boarderRadius),
            borderSide: BorderSide(color: focusedBorderColor)),
        hintText: hintText,
        labelText: labelText,
        hintStyle: Styles.textStyle16.copyWith(color: Colors.grey),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 0.5.w),
        ),
        contentPadding:  EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 12.w,
        ),
      ),
    );
  }
}
