// ignore_for_file: prefer_const_constructors

import 'package:firebase_app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children:  [
          Container(
          width: w,
              height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 200,
                ),
              Text(
                "TRANSACTION SUCCESSFUL",
                style: TextStyle(color: Colors.blue[900],fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  height: 80,
                ),
              GestureDetector(
                onTap: () {Get.to(()=>WelcomePage());},
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[500],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: Center(
                      child: Text(
                      "Back",
                      style: TextStyle(color: Colors.black, fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                    ),),
              )
            ],
          ),),
        ])
    );
  }
}