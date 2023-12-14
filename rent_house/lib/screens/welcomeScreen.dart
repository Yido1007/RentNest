// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/welcomeScreenItem.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(12, 15, 20, 1),
          centerTitle: true,
          title: Text(
            "RentNest",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(12, 15, 20, 1),
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/image/street.jpg"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign Up for Rent House',
                  style: GoogleFonts.hindSiliguri(
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                      color: Colors.white),
                ),
                Text(
                  "Discover perfect property with easy-to-use app",
                  style: TextStyle(
                    color: Color.fromARGB(255, 172, 171, 171),
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RegisterLoginItem(
                  title: "Sign in with Google",
                  icon: Icons.g_mobiledata,
                  onTap: () => Navigator.pushNamed(context, '/register'),
                ),
                SizedBox(
                  height: 20,
                ),
                RegisterLoginItem(
                  title: "Sign in with Apple",
                  icon: Icons.apple,
                  onTap: () => Navigator.pushNamed(context, '/register'),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                IconlessButton(
                  title: "Create an Account",
                  onTap: () => Navigator.pushNamed(context, '/register'),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account ?",
                      style: TextStyle(color: Colors.white),
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/login'),
                      child: Text(
                        " Log in",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
