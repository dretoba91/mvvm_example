// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvvm_example/config/themes/color.dart';
import 'package:mvvm_example/config/themes/size_calculator.dart';
import 'package:mvvm_example/view-model/app_homepage_view_model.dart';

class AppHomepage extends StatefulWidget {
  const AppHomepage({Key? key}) : super(key: key);

  @override
  State<AppHomepage> createState() => _AppHomepageState();
}

class _AppHomepageState extends State<AppHomepage> {
  // NB: creating an instance of the App homepage ViewModel
  var homePageData = AppHomePageViewModel();

  // Increase counter
  counterIncrement() {
    setState(() {
      homePageData.increaseCounter();
    });
  }

  // Decrease counter
  counterDecrement() {
    setState(() {
      homePageData.decreaseCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greenColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "asset/images/counter.png",
            color: AppColors.white,
            width: sizer(true, 15, context),
          ),
        ),
        title: Text(
          homePageData.appTitle,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(height: sizer(false, 20, context)),
              Center(
                child: SizedBox(
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      color: Color.fromARGB(255, 249, 246, 246),
                      child: Text(
                        homePageData.subTitle,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.text1),
                      )),
                ),
              ),
              SizedBox(height: sizer(false, 40, context)),
              Text(
                "${homePageData.getCounterValue()}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.text1),
              ),
              SizedBox(
                height: sizer(false, 50, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        color: AppColors.greyBackground,
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 1.5, color: AppColors.greyColor)),
                    child: IconButton(
                        onPressed: () {
                          counterDecrement();
                        },
                        icon: const Icon(
                          Icons.remove_sharp,
                          size: 30,
                          color: AppColors.greenColor10,
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        color: AppColors.greyBackground,
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 1.5, color: AppColors.greyColor)),
                    child: IconButton(
                        onPressed: () {
                          counterIncrement();
                        },
                        icon: const Icon(
                          Icons.add_sharp,
                          size: 30,
                          color: AppColors.greenColor10,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
