// ignore_for_file: prefer_const_constructors

import 'package:firebase_app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReceiveFund extends StatefulWidget {
  const ReceiveFund({Key? key}) : super(key: key);

  @override
  State<ReceiveFund> createState() => _ReceiveFundState();
}

class _ReceiveFundState extends State<ReceiveFund> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
          Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/barcode.jpg"), fit: BoxFit.cover)),
          ),
          
          GestureDetector(
            onTap: () {Get.to(()=>WelcomePage());},
            child: Container(
              height: 150,
              width: w,
              decoration: BoxDecoration(
                  color: Colors.green[500],
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
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 70,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ]));
  }
}
