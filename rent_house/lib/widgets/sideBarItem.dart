// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '/widgets/profileItem.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(12, 15, 20, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileItem(
                nameTitle: 'Keyvan Arasteh',
                avatar: 'assets/image/k1.jpg',
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                }),
            Expanded(
              child: Column(
                children: [
                  Divider(
                    color: Colors.brown,
                  ),
                  MenuItem(
                    title: 'Home Screen',
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  MenuItem(
                    title: 'About Us',
                    icon: Icon(
                      Icons.info_outline_rounded,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/about");
                    },
                  ),
                  MenuItem(
                    title: 'Contact Us',
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                  ),
                  Divider(
                    height: 2,
                    color: Colors.brown,
                  ),
                  MenuItem(
                    title: 'Settings',
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                  ),
                  Divider(
                    color: Colors.brown,
                  ),
                  MenuItem(
                    icon: Icon(
                      Icons.login_outlined,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/welcome', (route) => false);
                    },
                    title: 'logout',
                  ),
                ],
              ),
            ),
            Text(
              "Version 1.0.0",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;

  const MenuItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(
              width: 7,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
