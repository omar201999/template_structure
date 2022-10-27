
import 'package:flutter/material.dart';
import 'package:template_structure/presentation/styles/colors.dart';

import 'medium_text.dart';

class DefaultTextButton extends StatelessWidget {

  final String text ;
  final VoidCallback onPressed ;
  final Color color;

  const DefaultTextButton({Key? key , required this.text , required this.onPressed ,this.color = AppColor.textButtonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: MediumText(text: text,color: color,),
    );
  }
}
