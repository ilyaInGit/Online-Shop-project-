import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/widgets/banner_slider.dart';
import 'package:flutter_application_1/widgets/product_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: CustomColors.backgroundScreen,
          body: Center(child: ProductItem()),
        ),
      ),
    );
  }
}

class CategoryHorizontalItemList extends StatelessWidget {
  const CategoryHorizontalItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: ShapeDecoration(
                shadows: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 15,
                    spreadRadius: -10,
                    offset: Offset(0, 10),
                  ),
                ],
                color: Colors.red,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(40),
                ),
              ),
            ),
            Icon(Icons.mouse, color: Colors.white, size: 30),
          ],
        ),
        SizedBox(height: 10),
        Text("همه", style: TextStyle(fontFamily: 'SB', fontSize: 12)),
      ],
    );
  }
}
