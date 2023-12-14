// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rent_house/screens/house1.dart';
import '/screens/homeScreen.dart';
import '/screens/loginScreen.dart';
import '/screens/profileScreen.dart';
import '/screens/registerScreen.dart';
import '/screens/welcomeScreen.dart';

import 'screens/aboutUsScreen.dart';
import 'screens/changePasswordScreen.dart';
import 'screens/contactScreen.dart';
import 'screens/house2.dart';
import 'screens/house3.dart';
import 'screens/house4.dart';
import 'screens/settingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rent House',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/register': (context) => RegisterScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/settings': (context) => SettingsScreen(),
        '/contact': (context) => ContactScreen(),
        '/about': (context) => AboutUs(),
        '/house1': (context) => House1(),
        '/house2': (context) => House2(),
        '/house3': (context) => House3(),
        '/house4': (context) => House4(),
        '/change': (context) => ChangePassword()
      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
