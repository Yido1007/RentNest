// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/contactScreenItem.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(12, 15, 20, 1),
          centerTitle: true,
          title: Text(
            "Contact",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(12, 15, 20, 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactItem(
                icon: Icon(
                  Icons.person_pin_circle_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                name1: "Furkan Şanverdi",
                name2: "Emre Doğan",
                name3: "Yiğithan İhsan Topçu",
                socialMedia: "LinkedIn",
              ),
              SizedBox(
                height: 30,
              ),
              ContactItem(
                icon: Icon(
                  Icons.hub_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                name1: "FurkanSanverdi",
                name2: "doganlemre",
                name3: "Yido1007",
                socialMedia: "Github",
              ),
              SizedBox(
                height: 30,
              ),
              ContactItem(
                  icon: Icon(
                    Icons.phone_outlined,
                    color: Colors.white,
                  ),
                  name1: "+90 555 555 55 55",
                  name2: "+90 555 666 77 88",
                  name3: "+90 555 444 99 11",
                  socialMedia: "Phone")
            ],
          ),
        ),
      ),
    );
  }
}
