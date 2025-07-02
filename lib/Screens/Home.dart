import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store_app/Components/Custom_App_Bar.dart';
import 'package:store_app/Components/Custom_Text.dart';
import 'package:store_app/Models/Cover_Model.dart';
import 'package:store_app/Models/Product_Model.dart';
import 'package:store_app/core/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primary,

      appBar: CustomeAppBar(isBlackk: true),

      body: Stack(
        children: [
          // texts
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/texts/10.svg'),
          ),

          Positioned(
            top: 85,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/texts/Collection.svg'),
          ),

          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/texts/October.svg'),
          ),

          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Gap(120),
                      Image.asset('assets/cover/cover1.png'),
                      Gap(20),

                      GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: ProductModel.products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 15,
                          childAspectRatio: 0.50,
                        ),
                        itemBuilder: (context, index) {
                          final item = ProductModel.products[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                item.image,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    color: Colors.grey[300],
                                    child: Icon(Icons.error),
                                  );
                                },
                              ),
                              Gap(10),
                              CustomText(text: item.name),
                              CustomText(
                                text: item.description,
                                color: Colors.grey,
                              ),
                              Gap(5),
                              CustomText(
                                text: '\$${item.price.toString()}',
                                color: Colors.red.shade100,
                                size: 14.0,
                                weight: FontWeight.bold,
                              ),
                            ],
                          );
                        },
                      ),

                      Gap(20),
                      CustomText(
                        text: "You May Also like".toUpperCase(),
                        color: Colors.grey,
                        size: 26,
                      ),
                      Gap(10),
                      Image.asset("assets/svgs/line.png", width: 220),
                      Gap(40),

                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: CoverModel.Cover.length,
                          itemBuilder: (context, index) {
                            final item = CoverModel.Cover[index];
                            return Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    item.image,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  ),
                                  Gap(20),
                                  CustomText(
                                    text: item.name.toUpperCase(),
                                    size: 26,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      about(),
                      Gap(20),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey.shade500,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0, top: 10),
                    child: Center(
                      child: CustomText(
                        text: 'Copyright© OpenUI All Rights Reserved.',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget about() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Ionicons.logo_instagram, color: Colors.white),
          Gap(20),
          Icon(Ionicons.logo_facebook, color: Colors.white),
          Gap(20),
          Icon(Ionicons.logo_twitter, color: Colors.white),
        ],
      ),

      Gap(20),
      Image.asset("assets/svgs/line.png", width: 220),
      Gap(20),

      CustomText(
        max: 3,
        height: 2,
        text:
            'support@openui.design \n      +60 825 876 \n 08:00- 22:00 - Everyday',
      ),

      Gap(20),
      Image.asset("assets/svgs/line.png", width: 220),
      Gap(20),

      CustomText(text: 'About    Contact    Blog'),
      Gap(20),
    ],
  );
}
