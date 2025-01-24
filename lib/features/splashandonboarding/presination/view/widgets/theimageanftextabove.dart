import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/Theming/text_styles.dart';

class Theimageanftextabove extends StatelessWidget {
  const Theimageanftextabove({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(.0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [.1, .35])),
            child: Image.asset(
              'assets/images/onboarding.png',
              height: 450.h,
              width: double.infinity,
            )),
        Positioned(
          bottom:-10.h,
          child: Text(
            'Best Marketplace\n For Shopping',
            style:
                Textstyles.font32blackbold.copyWith(fontFamily: 'JosefinSans',fontSize: 28,),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
