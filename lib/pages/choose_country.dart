// ignore_for_file: prefer_const_constructors

import 'package:firebase_app/pages/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({Key? key}) : super(key: key);

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        
          body: Column(children: [
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/signup.jpg"), fit: BoxFit.cover)),
            child: Column(
          children: [ 
            SizedBox(height: 250,),
            GestureDetector(
              onTap: (){Get.to(()=>OutNigeria());},
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
                    child: Center(child: Image.asset('img/Nigeria.png')),
              ),
            ),
            SizedBox(
                height: 12,
              ),
              Text(
                'Nigeria',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 75,
              ),
              GestureDetector(
                onTap: (){Get.to(()=>OutNigeria());},
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
                    child: Center(child: Image.asset('img/othercountries.jpg')),
                          ),
              ),
            SizedBox(
                height: 12,
              ),
              Text(
                'Other Countries',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
          ],
        ))]));
  }
}
