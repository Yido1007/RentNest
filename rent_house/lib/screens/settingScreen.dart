// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/settingsScreenItem.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(12, 15, 20, 1),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(12, 15, 20, 1),
          centerTitle: true,
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/profile"),
                child: SettingsItem(
                    icon: Icon(Icons.person_outline, color: Colors.white),
                    title: "Keyvan Arasteh",
                    description: "Change your password"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "General",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SettingsItem(
                  icon:
                      Icon(Icons.filter_vintage_outlined, color: Colors.white),
                  title: "Notifications",
                  description: "Control how the app alert you"),
              SettingsItem(
                icon: Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.white,
                ),
                title: "Privacy",
                description: "Manage how your data is handled and shared",
              ),
              SettingsItem(
                icon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                title: "Security",
                description: "Custom security feature to fit your needs",
              ),
              SwitchItem(
                  icon: Icon(
                    Icons.swap_horizontal_circle_outlined,
                    color: Colors.white,
                  ),
                  title: "Theme",
                  description: "")
            ],
          ),
        ),
      ),
    );
  }
}
