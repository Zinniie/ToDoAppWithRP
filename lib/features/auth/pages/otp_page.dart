import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:to_do_app/common/utils/constants.dart';
import 'package:to_do_app/common/widgets/appstyle.dart';
import 'package:to_do_app/common/widgets/height_spacer.dart';
import 'package:to_do_app/common/widgets/reusable_text.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeightSpacer(
              height: AppConst.kHeight * 0.12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Image.asset(
                'assets/images/todo.png',
                width: AppConst.kWidth * 0.5,
              ),
            ),
            HeightSpacer(height: 26),
            ReusableText(
              text: 'Enter your otp code',
              style: appstyle(
                18,
                AppConst.kLight,
                FontWeight.bold,
              ),
            ),
            HeightSpacer(height: 26),
            Pinput(
              length: 6,
              showCursor: true,
              onCompleted: (value) {
                if (value.length == 6) {}
              },
              onSubmitted: (value) {},
            ),
          ],
        ),
      )),
    );
  }
}
