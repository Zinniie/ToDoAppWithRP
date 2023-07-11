import 'package:flutter/material.dart';
import 'package:to_do_app/common/utils/constants.dart';
import 'package:to_do_app/common/widgets/appstyle.dart';
import 'package:to_do_app/common/widgets/reusable_text.dart';

import '../../../common/widgets/height_spacer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ReusableText(
              text: 'Todo with riverpod',
              style: appstyle(
                26,
                AppConst.kBlueLight,
                FontWeight.bold,
              )),
          const HeightSpacer(
            height: 30,
          ),
          ReusableText(
              text: 'Todo with riverpod',
              style: appstyle(
                26,
                AppConst.kBlueLight,
                FontWeight.bold,
              )),
          const HeightSpacer(
            height: 20,
          ),
          ReusableText(
              text: 'Todo with riverpod',
              style: appstyle(
                26,
                AppConst.kBlueLight,
                FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
