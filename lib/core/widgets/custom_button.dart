import 'package:ecommerce/constant.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.buttonName,
      this.onPressed,
       this.height=50,
       this.width=double.infinity,
       this.radius=100,
      })
      : super(key: key);

  final String buttonName;
  final void Function()? onPressed;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              radius,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: Styles.textStyle16.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
