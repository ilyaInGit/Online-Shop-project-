import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsetsGeometry.only(
                top: 35,
                bottom: 30,
                left: 44,
                right: 44,
              ),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: 16),
                    Image.asset("assets/images/icon_apple_blue.png"),
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        "دسته بندی",
                        style: TextStyle(
                          color: CustomColors.blue,
                          fontSize: 16,
                          fontFamily: 'SB',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(((context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              })),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
