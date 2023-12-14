// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/IntroductionMenuItem.dart';
import '../widgets/homeIntroductionItem.dart';

class House1 extends StatelessWidget {
  const House1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(12, 15, 20, 1),
          centerTitle: true,
          title: Text(
            "Cascade House",
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
                            image: "assets/image/salon1.jpg",
                            title: "Saloons",
                            description:
                                "This house has 5 halls and each hall is 80 square meters"),
                        HomeIntroduction(
                          image: "assets/image/mutfak1.jpg",
                          title: "Kitchen",
                          description: "this house has 2 kitchen",
                        ),
                        HomeIntroduction(
                          image: "assets/image/banyo1.jpg",
                          title: "Bathroom",
                          description: "this house has 4 bathrooms",
                        ),
                        HomeIntroduction(
                          image: "assets/image/yOdası1.webp",
                          title: "Bedroom",
                          description:
                              "This house has 5 halls and each hall is 30 square meters",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              IntroductionMenuItem(price: "\$1300")
            ],
          ),
        ),
      ),
    );
  }
}
