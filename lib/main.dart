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
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsetsGeometry.only(top: 10),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: BannerSlider(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 30,
                    right: 30,
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          "assets/images/icon_left_categroy.png",
                        ),
                      ),
                      Text(
                        "مشاهده همه",
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: CustomColors.blue,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "دسته بندی",
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: CustomColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsGeometry.only(left: 20),
                        child: CategoryHorizontalItemList(),
                      );
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 30,
                    right: 30,
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          "assets/images/icon_left_categroy.png",
                        ),
                      ),
                      Text(
                        "مشاهده همه",
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: CustomColors.blue,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "پرفروش ها",
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: CustomColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 216,
                  child: ListView.builder(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    padding: EdgeInsets.only(right: 20, left: 20),
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ProductItem(),
                      );
                    }),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 30,
                    right: 30,
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          "assets/images/icon_left_categroy.png",
                        ),
                      ),
                      Text(
                        "مشاهده همه",
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: CustomColors.blue,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "پر بازدید ترین ها",
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: CustomColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 216,
                  child: ListView.builder(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    padding: EdgeInsets.only(right: 20, left: 20),
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ProductItem(),
                      );
                    }),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 30)),
            ],
          ),
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
