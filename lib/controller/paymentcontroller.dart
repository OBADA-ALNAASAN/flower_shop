
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Paymentcontroller extends GetxController {

}

class PaymentcontrollerImp extends Paymentcontroller {
  late TextEditingController email;
  late TextEditingController name;
  late TextEditingController town;
  late TextEditingController adress;
  late TextEditingController specialInstructions;
  late TextEditingController phonenumber;

  @override
  void onInit() {
    email = TextEditingController();
    name = TextEditingController();
    town = TextEditingController();
    adress = TextEditingController();
    specialInstructions = TextEditingController();
    phonenumber = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    name.dispose();
    town.dispose();
    adress.dispose();
    specialInstructions.dispose();
    phonenumber.dispose();
    super.dispose();
  }
}
