// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_app/pages/choose_country.dart';
import 'package:firebase_app/pages/receive_fund.dart';
import 'package:firebase_app/pages/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                width: w,
                height: h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/signup.jpg"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Enex',
                                style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                ' ACCOUNT',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                shape: BoxShape.circle),
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 150),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[300],
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'ENAIRA BALANCE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\₦201,000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '**** 3456',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                '18/24',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ChooseCountry());
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 40,
                                    spreadRadius: 10,
                                  ),
                                ]),
                            child: Center(
                                child: Image.asset('img/send-money.png')),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'SEND',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ReceiveFund());
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 40,
                                    spreadRadius: 10,
                                  ),
                                ]),
                            child:
                                Center(child: Image.asset('img/received.png')),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'RECEIVE',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ]),
        ));
  }
}
