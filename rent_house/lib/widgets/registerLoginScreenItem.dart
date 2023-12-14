// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class LoginItem extends StatelessWidget {
  final String title;
  final String placeholder;
  final String title2;
  final String placeholder2;
  final String buttonText;
  const LoginItem({
    super.key,
    required this.title,
    required this.placeholder,
    required this.title2,
    required this.placeholder2,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(61, 158, 158, 158),
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: placeholder,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title2,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(61, 158, 158, 158),
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: placeholder2,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (Route<dynamic> route) => false);
                },
                child: Text(buttonText),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RegisterItem extends StatelessWidget {
  final String title;
  final String placeholder;
  final String title2;
  final String placeholder2;
  final String buttonText;
  const RegisterItem({
    super.key,
    required this.title,
    required this.placeholder,
    required this.title2,
    required this.placeholder2,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(61, 158, 158, 158),
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: placeholder,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(title2),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(61, 158, 158, 158),
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              decoration: InputDecoration(hintText: placeholder2),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(61, 158, 158, 158),
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              decoration: InputDecoration(hintText: "Confirm your Password"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (Route<dynamic> route) => false);
                },
                child: Text(buttonText),
              ),
            ],
          )
        ],
      ),
    );
  }
}
