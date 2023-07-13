import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:to_do_app/common/utils/constants.dart';
import 'package:to_do_app/common/widgets/appstyle.dart';
import 'package:to_do_app/common/widgets/reusable_text.dart';

import '../../../common/widgets/height_spacer.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(85),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: 'Dashboard',
                          style: appstyle(
                            18,
                            AppConst.kLight,
                            FontWeight.bold,
                          )),
                      Container(
                        width: 25.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppConst.kLight,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              9,
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
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
