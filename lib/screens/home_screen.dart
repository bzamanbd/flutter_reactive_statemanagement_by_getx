import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final String title;
  HomeScreen({Key? key, required this.title}) : super(key: key);

  var count = 0.obs;
  void increase (){
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(()=>Text('Current Number is: $count',
            textScaleFactor: 1.4,
            textAlign: TextAlign.center,
            ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('Counter',
              textScaleFactor: 1.2,
              textAlign: TextAlign.center,
              ),
              onPressed: increase,
            ),
          ],
        ),
      ),
    );
  }
}