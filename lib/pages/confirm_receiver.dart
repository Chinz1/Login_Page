// ignore_for_file: prefer_const_constructors

import 'package:firebase_app/pages/success_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmReceiver extends StatefulWidget {
  final String country;
  final String bank;
  final String account;
  final String description;
  final String eNaira;

  const ConfirmReceiver(
      {Key? key,
      required this.country,
      required this.bank,
      required this.account,
      required this.description,
      required this.eNaira})
      : super(key: key);

  @override
  State<ConfirmReceiver> createState() => _ConfirmReceiverState();
}

class _ConfirmReceiverState extends State<ConfirmReceiver> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Text(
              "Beneficiary's Details",
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: w,
              height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: Center(child: Text(widget.country, style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),))),
            SizedBox(
              height: 35,
            ),
            Container(
              width: w,
              height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: Center(child: Text(widget.bank, style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w600)))),
            SizedBox(
              height: 35,
            ),
            Container(
              width: w,
              height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: Center(child: Text(widget.account, style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w600)))),
            SizedBox(
              height: 35,
            ),
            Container(
              width: w,
              height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: Center(child: Text(widget.description, style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w600)))),
            SizedBox(
              height: 35,
            ),
            Container(
              width: w,
              height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: Center(
                  child: Text(widget.eNaira, style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.w600)),
                )),
            SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SuccessPage());
              },
              child: Container(
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
                      "CONFIRM",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
          ]),
        ));
  }
}
