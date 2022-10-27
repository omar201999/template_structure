import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';
import 'headline_text.dart';

class MyButton extends StatelessWidget {
  final Color color;

  final void Function() onPressed;

  final String text;

  final double width;
  final EdgeInsetsGeometry padding;
  final bool isUpper;

  final double borderRadius;

  const MyButton({
    Key? key,
    this.color = AppColor.myButtonColor,
    required this.onPressed,
    required this.text,
    this.width = double.infinity,
    this.isUpper = true,
    this.padding = EdgeInsets.zero,
    this.borderRadius = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:padding,
      child: Container(
        width: width,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: color
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: MaterialButton(
         // color: color,
          //height: 52.h,
          onPressed: onPressed,
          child: HeadLineText(
            text: text,
            color: AppColor.white,
            fontSize: 20.sp,
            isUpper: isUpper,
          ),
        ),
      ),
    );
  }
}
