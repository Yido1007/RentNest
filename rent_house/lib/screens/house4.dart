// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rent_house/widgets/IntroductionMenuItem.dart';

import '../widgets/homeIntroductionItem.dart';

class House4 extends StatelessWidget {
  const House4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(12, 15, 20, 1),
          centerTitle: true,
          title: Text(
            "Sr/Jr House",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(12, 15, 20, 1),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Expanded(
                    child: Column(
                      children: [
                        HomeIntroduction(
                            image: "assets/image/salon4.jpg",
                            title: "Saloons",
                            description:
                                "This house has 5 halls and each hall is 45 square meters"),
                        HomeIntroduction(
                          image: "assets/image/mutfak4.jpg",
                          title: "Kitchen",
                          description: "this house has 2 kitchen",
                        ),
                        HomeIntroduction(
                          image: "assets/image/banyo4.jpg",
                          title: "Bathroom",
                          description: "this house has 4 bathrooms",
                        ),
                        HomeIntroduction(
                          image: "assets/image/yOdası4.jpg",
                          title: "Bedroom",
                          description:
                              "This house has 5 halls and each hall is 10 square meters",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              IntroductionMenuItem(price: "\$1550")
            ],
          ),
        ),
      ),
    );
  }
}
