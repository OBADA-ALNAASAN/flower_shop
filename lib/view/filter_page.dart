import 'package:flower_shop/view/widget/paymentbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: [
        PaymentBar(
            onPressed: () {
              Get.back();
            },
          )
      ],),
    );
  }
}