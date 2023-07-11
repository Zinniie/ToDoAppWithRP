import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:to_do_app/common/utils/constants.dart';
import 'package:to_do_app/features/onboarding/pages/onboarding.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(
          375,
          825,
        ),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Todo',
            theme: ThemeData(
              scaffoldBackgroundColor: AppConst.kBkDark,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
              useMaterial3: true,

              // primarySwatch: Colors.blue,
            ),
            themeMode: ThemeMode.dark,
            home: const Onboarding(),
          );
        });
  }
}
