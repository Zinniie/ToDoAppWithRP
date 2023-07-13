import 'package:flutter/material.dart';
import 'package:to_do_app/common/utils/constants.dart';
import 'package:to_do_app/common/widgets/appstyle.dart';
import 'package:to_do_app/common/widgets/reusable_text.dart';

class CustomOutlineBtn extends StatelessWidget {
  const CustomOutlineBtn({
    super.key,
 this.onTap,
    required this.width,
    required this.height,
    this.color2 = AppConst.kBkDark,
    required this.color,
    required this.text,
  });

  final void Function()? onTap;
  final double width, height;
  final Color color2, color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color2,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(
              width: 1,
              color: color,
            )),
        child: Center(
          child: ReusableText(
              text: text,
              style: appstyle(
                18,
                color,
                FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
