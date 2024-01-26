// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //states
  TextEditingController nameController = TextEditingController(text: "");
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    readData();
  }

  storeData() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    storage.setString("email", emailController.text);
    storage.setString("password", passwordController.text);
    storage.setString("name", nameController.text);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Succesful register"),
        backgroundColor: Color.fromRGBO(24, 31, 41, 1),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(5),
      ),
    );
  }

  readData() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    var name = storage.getString("name");
    var email = storage.getString("email");
    var password = storage.getString("password");

    setState(() {
      nameController.text = name ?? "";
      emailController.text = email ?? "";
      passwordController.text = password ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(12, 15, 20, 1),
          centerTitle: true,
          title: Text(
            "Register",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(12, 15, 20, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Text(
                      "Name",
                      style: TextStyle(color: Colors.white),
                    ),
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
                      controller: nameController,
                      // onChanged: (value) {
                      //   setState(() {
                      //     name = value;
                      //   });
                      // },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
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
                      controller: emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(61, 158, 158, 158),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Save Information",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: storeData,
                              child: Icon(
                                Icons.save,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, '/home',
                                (Route<dynamic> route) => false);
                          },
                          child: Text("Register"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
