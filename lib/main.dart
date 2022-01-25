import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';

void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String _title='Reactive State Management';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: HomeScreen(title: _title,),
    );
  }
}