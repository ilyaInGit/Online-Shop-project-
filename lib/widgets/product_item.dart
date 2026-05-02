import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 10),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Expanded(child: Container()),
              Image.asset("assets/images/iphone.png"),
              Positioned(
                child: Image.asset("assets/images/active_fav_product.png"),
                top: 0,
                right: 10,
              ),
            ],
          ),
          SizedBox(height: 8),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 8),
                child: Text(
                  "آیفون 14 پرومکس",
                  style: TextStyle(fontFamily: 'SM', fontSize: 14),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 53,
            decoration: BoxDecoration(
              color: CustomColors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: CustomColors.blue,
                  blurRadius: 25,
                  spreadRadius: -12,
                  offset: Offset(0.0, 15),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "تومان",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SM',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "50,000,000",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SM',
                          fontSize: 15,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        "47,000,000",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SM',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    height: 25,
                    "assets/images/icon_right_arrow_cricle.png",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
