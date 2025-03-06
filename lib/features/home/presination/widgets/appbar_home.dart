import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/Theming/colors.dart';
import '../../../../core/Theming/text_styles.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              SizedBox(
                width: 300.w,
                height: 50.h,
                child: TextFormField(
                  cursorColor: Colors.black,
                      decoration: InputDecoration(
                        filled: true,
                        // contentPadding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                        fillColor: Colors.grey[250],
                        suffixIcon: const Icon(Icons.search,color: Colorsmanager.blackcolor,),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.r),borderSide: const BorderSide(color: Colors.transparent)),
                        hintText: 'Search',
                        hintStyle: Textstyles.font12greybold,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.r),borderSide: const BorderSide(color: Colors.transparent)),
                )),
              ),
              const Spacer(),
              Container(
                padding:  EdgeInsets.all(7.h),
                // height: 40.h,
                // width: 45,
                decoration: const BoxDecoration(color:   Color.fromARGB(100, 158, 158, 158),shape: BoxShape.circle),
                child: SvgPicture.asset('assets/icons/notification.svg',height:  35.h,))
            ],
          );
  }
}