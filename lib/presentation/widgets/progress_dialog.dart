import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_structure/business_logic/global_cubit/global_cubit.dart';
import 'package:template_structure/presentation/styles/colors.dart';
import 'package:template_structure/presentation/widgets/regular_text.dart';


class ProgressDialog extends StatelessWidget {

  final String? message;
  const ProgressDialog({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.black,
      child: Container(
        margin: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: GlobalCubit.get(context).cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:  EdgeInsets.all(15.0.r),
          child: Row(
            children:
            [
              SizedBox(width: 6.w,),
              const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(AppColor.green),),
              SizedBox(width: 26.w,),
              RegularText(text: message!),
            ],
          ),
        ),
      ),
    );
  }
}
