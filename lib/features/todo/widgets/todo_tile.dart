import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:to_do_app/common/utils/constants.dart';
import 'package:to_do_app/common/widgets/appstyle.dart';
import 'package:to_do_app/common/widgets/height_spacer.dart';
import 'package:to_do_app/common/widgets/reusable_text.dart';
import 'package:to_do_app/common/widgets/width_spacer.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    this.color,
    this.title,
    this.description,
    this.start,
    this.end,
    this.editWidget,
    this.delete,
    this.switcher,
  });

  final Color? color;
  final String? title, description, start, end;
  final Widget? editWidget, switcher;
  final void Function()? delete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(8.h),
            width: AppConst.kWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(AppConst.kRadius),
                ),
                color: AppConst.kGreyLight),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 5,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(AppConst.kRadius)),
                        // TODO: ADD DYNAMIC COLORS
                        color: color ?? AppConst.kRed,
                      ),
                    ),
                    WidthSpacer(width: 15),
                    Padding(
                      padding: EdgeInsets.all(8.h),
                      child: SizedBox(
                        width: AppConst.kWidth * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              text: title ?? 'Title of Todo',
                              style: appstyle(
                                18,
                                AppConst.kLight,
                                FontWeight.bold,
                              ),
                            ),
                            HeightSpacer(height: 3),
                            ReusableText(
                              text: description ?? 'Description of Todo',
                              style: appstyle(
                                12,
                                AppConst.kLight,
                                FontWeight.bold,
                              ),
                            ),
                            HeightSpacer(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: AppConst.kWidth * 0.3,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: AppConst.kGreyDk,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        AppConst.kRadius,
                                      ),
                                    ),
                                    color: AppConst.kBkDark,
                                  ),
                                  child: Center(
                                      child: ReusableText(
                                    text: '$start | $end',
                                    style: appstyle(
                                      12,
                                      AppConst.kLight,
                                      FontWeight.normal,
                                    ),
                                  )),
                                ),
                                WidthSpacer(width: 20),
                                Row(
                                  children: [
                                    SizedBox(
                                      child: editWidget,
                                    ),
                                    WidthSpacer(width: 20),
                                    GestureDetector(
                                      onTap: delete,
                                      child: Icon(
                                          MaterialCommunityIcons.delete_circle),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 0.h),
                  child: switcher,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
