// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final Icon icon;
  final String name1;
  final String name2;
  final String name3;
  final String socialMedia;
  const ContactItem({
    super.key,
    required this.icon,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.socialMedia,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              width: 7,
            ),
            Text(
              socialMedia,
              style: TextStyle(fontSize: 35, color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name1,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              name2,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          name3,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ],
    );
  }
}
