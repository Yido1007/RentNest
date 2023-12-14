// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final Function()? onTap;
  final String nameTitle;
  final String avatar;
  const ProfileItem({
    super.key,
    this.onTap,
    required this.nameTitle,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.brown,
              ),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                  radius: 35,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              nameTitle,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
