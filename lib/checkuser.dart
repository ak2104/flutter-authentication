// ignore_for_file: prefer_const_constructors

import 'package:authentication/loginpage.dart';
import 'package:authentication/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CheckUser extends StatefulWidget {
  const CheckUser({super.key});

  @override
  State<CheckUser> createState() => _CheckUserState();
}

class _CheckUserState extends State<CheckUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  checkuser() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return MyHomePage(title: "HomeScreen");
    } else {
      //return LoginPage
      return LoginPage();
    }
  }
}
