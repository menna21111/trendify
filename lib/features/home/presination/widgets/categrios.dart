import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendify/core/Theming/colors.dart';

import 'list_categries_item.dart';

class Categrios extends StatefulWidget {
   const Categrios({super.key});

  @override
  State<Categrios> createState() => _CategriosState();
}

class _CategriosState extends State<Categrios>with TickerProviderStateMixin {
    TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return  Column(
      children: [
        TabBar(
          indicatorWeight: 1,
        tabAlignment: TabAlignment.start,
    // physics:  BouncingScrollPhysics(),
         isScrollable: true,
          labelColor: Colorsmanager.greencolor,
        indicatorColor: Colorsmanager.greencolor,
        unselectedLabelColor: Colorsmanager.greycolor,
          dividerColor: Colors.transparent,
           indicatorSize: TabBarIndicatorSize.label,
          controller: tabController,
          tabs: const [Tab(text: 'All'),Tab(text: 'Clothes'),Tab(text: 'Electronics'),Tab(text: 'Furniture'),Tab(text: 'Furniture'),Tab(text: 'Furniture'),],),
          Container(
            margin: EdgeInsets.only(top: 10.h,bottom: 10.h),

            height: 280.h,
            child: TabBarView( controller: tabController,children:const [
              ListCategriesItem(),ListCategriesItem(),ListCategriesItem(),ListCategriesItem(),ListCategriesItem(),ListCategriesItem(),
            ],),
          )
      ],
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';






// class Categrios extends StatefulWidget {
//   const Categrios({super.key});

//   @override
//   State<Categrios> createState() => _CategriosState();
// }

// class _CategriosState extends State<Categrios> {
//   List<String> tabs = [
//     "Popular",
//     "Most Visited",
//     "Recent",
//     "Explore",
//   ];
//   int current = 0;

//   double changePositionedOfLine() {
//     switch (current) {
//       case 0:
//         return 0;
//       case 1:
//         return 78;
//       case 2:
//         return 192;
//       case 3:
//         return 263;
//       default:
//         return 0;
//     }
//   }

//   double changeContainerWidth() {
//     switch (current) {
//       case 0:
//         return 50;
//       case 1:
//         return 80;
//       case 2:
//         return 50;
//       case 3:
//         return 50;
//       default:
//         return 0;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SizedBox(
//         width: size.width,
//         height: size.height,
//         child: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.only(top: 15),
//               width: size.width,
//               height: size.height * 0.05,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     top: 0,
//                     left: 0,
//                     right: 0,
//                     child: SizedBox(
                  
//                       height: size.height * 0.04,
//                       child: ListView.builder(
//                           physics: const BouncingScrollPhysics(),
//                           scrollDirection: Axis.horizontal,
//                           itemCount: tabs.length,
//                           itemBuilder: (context, index) {
//                             return Padding(
//                               padding: EdgeInsets.only(
//                                   left: index == 0 ? 10 : 23, top: 7),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     current = index;
//                                   });
//                                 },
//                                 child: Text(
//                                   tabs[index],
                               
//                                 ),
//                               ),
//                             );
//                           }),
//                     ),
//                   ),
//                   AnimatedPositioned(
//                     curve: Curves.fastLinearToSlowEaseIn,
//                     bottom: 0,
//                     left: changePositionedOfLine(),
//                     duration: const Duration(milliseconds: 500),
//                     child: AnimatedContainer(
//                       margin: const EdgeInsets.only(left: 10),
//                       width: changeContainerWidth(),
//                       height: size.height * 0.008,
//                       decoration: BoxDecoration(
//                         color: Colors.deepPurpleAccent,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       duration: const Duration(milliseconds: 1000),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                     ),
//                   )
//                 ],
//               ),
//             ),
           
//           ],
//         ),
      
//     );
//   }
// }