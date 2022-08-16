// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:firebase_app/login_page.dart';
import 'package:firebase_app/pages/choose_country.dart';
import 'package:firebase_app/pages/home_page.dart';
import 'package:firebase_app/pages/receive_fund.dart';
import 'package:firebase_app/pages/success_page.dart';
import 'package:firebase_app/pages/text_field.dart';
import 'package:firebase_app/signup_page.dart';
import 'package:firebase_app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WelcomePage());
  }
}
