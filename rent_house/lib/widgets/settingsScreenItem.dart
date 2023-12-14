// ignore_for_file: prefer_const_constructors, must_be_immutable, avoid_print

import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final String description;

  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SwitchItem extends StatefulWidget {
  final Icon icon;
  final String title;
  final String description;

  const SwitchItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  State<SwitchItem> createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            widget.icon,
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
                Switch(
                  value: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark = value;
                      print(isDark);
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
