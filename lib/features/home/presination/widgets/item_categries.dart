import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendify/core/Theming/colors.dart';

import '../../../../core/Theming/text_styles.dart';

class ItemCategries extends StatelessWidget {
  const ItemCategries({super.key});

  @override
  Widget build(BuildContext context) {
    return  IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r), color: Colors.grey[200],),
         
       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(
            children: [
              ClipRRect(
              
                  borderRadius: BorderRadius.circular(15.r),
                
                child: Image.asset('assets/Screenshot.png',height: 200.h,width: 200.w,fit: BoxFit.fill
                ,),
              ),
            Positioned(
              top: 6.h,
              left:6 ,
              child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.red),
              padding: EdgeInsets.symmetric(horizontal: 8.w,),
              child: Text('-70%',style: Textstyles.font14blackbold.copyWith(color: Colorsmanager.whitecolor),),),)
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(right:  2.0.w,left: 8.w,top: 7.h,bottom: 5.h),
            child: Text('item name',maxLines: 1,style: Textstyles.font16blackbold,),
          ),
          Padding(
          padding:  EdgeInsets.only(right:  2.0.w,left: 8.w,top: 7.h,bottom: 5.h),
            child: Row(
              children: [
              Text('old price',style:Textstyles.font12greybold.copyWith(fontSize: 14.sp,   decoration: TextDecoration.lineThrough,)),
              Spacer(flex: 1,),
              Text('new price',style: Textstyles.font16blackbold.copyWith(color: Colorsmanager.greencolor)), Spacer(flex: 3,),
            ]),
          )
          ],
        ),
      ),
    );
  }
}