import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/home/presination/pages/home_screan.dart';
import 'features/splashandonboarding/presination/view/onboardingview.dart';

class ShopVibesApp extends StatelessWidget {
  const ShopVibesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>  MaterialApp( 
          builder: (context, child) {
            return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.linear(1.0)),
                child: child!);
          },
        debugShowCheckedModeBanner: false,
        home: HomeScrean(),
      ),
    );
  }
}