import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theming/colors.dart';
import '../../../../core/Theming/text_styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  4),
      child: Container(
      
         
        padding: EdgeInsets.all(8),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r), color: Colors.grey[200],),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Stack(
              children: [
                ClipRRect(
                
                    borderRadius: BorderRadius.circular(15.r),
                  
                  child: Image.asset('assets/Screenshot.png',height: 80.h,width: 100.w,fit: BoxFit.fill
                  ,),
                ),
              Positioned(
                top: 6.h,
                left:6 ,
                child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.red),
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                child: Text('-70%',style: Textstyles.font14blackbold.copyWith(color: Colorsmanager.whitecolor),),),)
              ],
            ),
        
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('itemname',style: Textstyles.font14blackbold,textAlign: TextAlign.center,),
                    SizedBox()
                   ,  Row(
                    children: [
                    Text('old price',style:Textstyles.font12greybold.copyWith(fontSize: 14.sp,   decoration: TextDecoration.lineThrough,)),
                    const Spacer(flex: 1,),
                    Text('new price',style: Textstyles.font16blackbold.copyWith(color: Colorsmanager.greencolor)), Spacer(flex: 3,),
                  ]),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}