import 'package:flutter/material.dart';
import 'package:flutter_gql/screens/landing/landing.controller.dart';
import 'package:get/get.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final LandingController ctrl = Get.put(LandingController());
    return Scaffold(
      body: Container(
        child: Center(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 10,
              child: Obx(() => Text("version ${ctrl.runningVersion.value}")),
            ),
          ),
        ),
      ),
    );
  }
}
