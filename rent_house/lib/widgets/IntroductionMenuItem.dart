// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class IntroductionMenuItem extends StatelessWidget {
  final String price;
  const IntroductionMenuItem({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.brown, width: 3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "For Sale",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 136, 136, 136),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: price,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                    children: [
                      TextSpan(
                        text: "/ include tax",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 136, 136, 136),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/contact'),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Call us",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
