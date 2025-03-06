import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendify/core/Theming/colors.dart';
import 'package:trendify/core/Theming/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/appbar_home.dart';
import '../widgets/banners.dart';
import '../widgets/categrios.dart';
import '../widgets/item_categries.dart';
import '../widgets/list_categries_item.dart';
import '../widgets/product_list.dart';
class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(children: [
                const SizedBox(height: 10,),
               const AppbarHome(),
                SizedBox(height: 20.h,),
               Row(children: [
                Text('Offers',style: Textstyles.font20blackbold,),
                const Spacer(),
                Text('See All',style: Textstyles.font12greybold.copyWith(color: Colorsmanager.greencolor),)
               ],),
               const Banners(),
                 SizedBox(height: 10.h,),
               const Categrios(),

              ],),
            ),
            SliverToBoxAdapter(
              child: ProductList(),
            )
          ],
        ),
      ),
      ),
    );
  }
}