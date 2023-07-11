import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:to_do_app/common/utils/constants.dart';
import 'package:to_do_app/common/widgets/appstyle.dart';
import 'package:to_do_app/common/widgets/custom_outline_btn.dart';
import 'package:to_do_app/common/widgets/height_spacer.dart';
import 'package:to_do_app/common/widgets/reusable_text.dart';

import '../../../common/widgets/custom_textfield.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController phone = TextEditingController();

  Country country = Country(
    phoneCode: '1',
    countryCode: 'US',
    displayName: 'United States',
    displayNameNoCountryCode: 'US',
    e164Key: '',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'USA',
    example: 'USA',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
          ),
          child: Container(
            // height: 2000,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                  ),
                  child: Image.asset(
                    'assets/images/todo.png',
                    width: 300,
                  ),
                ),
                const HeightSpacer(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 16.w,
                  ),
                  child: ReusableText(
                      text: 'Please enter your phone number',
                      style: appstyle(
                        17,
                        AppConst.kLight,
                        FontWeight.w500,
                      )),
                ),
                const HeightSpacer(height: 20),
                Center(
                  child: CustomTextField(
                    prefixIcon: Container(
                      padding: EdgeInsets.all(4),
                      child: GestureDetector(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              countryListTheme: CountryListThemeData(
                                bottomSheetHeight: AppConst.kHeight * 0.6,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(AppConst.kRadius),
                                    topRight:
                                        Radius.circular(AppConst.kRadius)),
                                backgroundColor: AppConst.kBkDark,
                              ),
                              onSelect: (code) {
                                setState(() {});
                              });
                        },
                        child: ReusableText(
                            text: '+1',
                            style: appstyle(
                              18,
                              AppConst.kBkDark,
                              FontWeight.bold,
                            )),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    hintText: 'Enter phone number',
                    hintStyle: appstyle(
                      16,
                      AppConst.kBkDark,
                      FontWeight.w600,
                    ),
                    controller: phone,
                  ),
                ),
                const HeightSpacer(height: 20),
                CustomOutlineBtn(
                  width: AppConst.kWidth * 0.9,
                  height: AppConst.kHeight * 0.07,
                  color: AppConst.kBkDark,
                  color2: AppConst.kLight,
                  text: 'Send Code',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// consumer boilerplate
// class LoginPage extends ConsumerStatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
// }

// class _LoginPageState extends ConsumerState<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
