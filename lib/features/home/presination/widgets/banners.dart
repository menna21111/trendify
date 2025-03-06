import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendify/core/Theming/colors.dart';

class Banners extends StatefulWidget {
  const Banners({super.key});

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  int currentIndex = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

void _onScroll() {
  if (_scrollController.hasClients) {
    final itemWidth = MediaQuery.of(context).size.width * 0.7 + 20;
    final index = (_scrollController.offset / itemWidth).round();

    if (index != currentIndex && index >= 0) { // Ensure index is non-negative
      setState(() {
        currentIndex = index;
      });
    }
  }
}


  @override
  Widget build(BuildContext context) {
    final items = [
      const ImageContainerModel(imagePath: 'assets/Screenshot.png'),
      const ImageContainerModel(imagePath: 'assets/Screenshot.png'),
      const ImageContainerModel(imagePath: 'assets/Screenshot.png'),
    ];

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height *
              0.21, // Adjust height as needed
          child: ListView.builder(
            controller: _scrollController,
            // physics: const BouncingScrollPhysics() ,
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: items[index],
              );
            },
          ),
        ),
        const SizedBox(height: 5),
        DotsIndicator(
          dotsCount: items.length,
          position: currentIndex,
          decorator: DotsDecorator(
            color: Colors.grey,
            activeColor: Colorsmanager.greencolor,
            size: const Size(12.0, 8.0),
            activeSize: const Size(12.0, 8.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            spacing: const EdgeInsets.symmetric(horizontal: 4.0),
          ),
        ),
      ],
    );
  }
}

class ImageContainerModel extends StatelessWidget {
  final String imagePath;

  const ImageContainerModel({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.h, bottom: 8.h, right: 10.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: SizedBox(  width: 290.w,
        
           // Adjust width as needed
                
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          
        ),
      ),
    );
  }
}
