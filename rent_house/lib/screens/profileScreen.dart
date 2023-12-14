// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '/widgets/profileItem.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(12, 15, 20, 1),
        body: Center(
          child: Column(
            children: [
              ProfileItem(
                nameTitle: 'Keyvan Arasteh',
                avatar:
                    'data:image/jpeg;base64,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',
              ),
              Divider(
                color: Colors.brown,
              ),
              SettingsItem(
                icon: Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                ),
                information: "keyvan.arasteh@live.com",
              ),
              Divider(
                color: Colors.brown,
              ),
              SettingsItem(
                icon: Icon(
                  Icons.phone_outlined,
                  color: Colors.white,
                ),
                information: "+90 555 555 55 55",
              ),
              Divider(
                color: Colors.brown,
              ),
              SettingsItem(
                icon: Icon(
                  Icons.folder_outlined,
                  color: Colors.white,
                ),
                information: "Cyber Security",
              ),
              Divider(
                color: Colors.brown,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, "/change", (route) => false),
                child: SettingsItem(
                  icon: Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                  information: "Change Password",
                ),
              ),
              Divider(
                color: Colors.brown,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Text("Go back"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final Icon icon;
  final String information;
  const SettingsItem({
    super.key,
    required this.icon,
    required this.information,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            width: 7,
          ),
          Text(
            information,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
