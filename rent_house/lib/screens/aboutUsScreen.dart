// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(12, 15, 20, 1),
        centerTitle: true,
        title: Text(
          "About Us",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(12, 15, 20, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "RentNest.com",
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                  text: "the first USA address for advertising and shopping,",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                  children: [
                    TextSpan(
                      text: "RentNest.com,",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          fontSize: 22),
                    ),
                    TextSpan(
                      text: " was launched in 2000 within the",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    TextSpan(
                      text: " Raspiyonel Group",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          fontSize: 22),
                    ),
                    TextSpan(
                      text:
                          "Beyond being an e-commerce site, it is also a representative of the process that has been going on since the birth of e-commerce in our country sahibinden.com , Has the distinction of being one of the largest electronic commerce and advertising platforms in the UK.",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
