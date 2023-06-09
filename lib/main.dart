import 'package:flutter/material.dart';
import 'package:mvvm_example/views-screen/app_homepage.dart';
import 'package:mvvm_example/config/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVVM Example',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const AppHomepage(),
    );
  }
}

