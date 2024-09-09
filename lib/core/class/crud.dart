import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flower_shop/core/class/statusrequest.dart';
import 'package:flower_shop/core/function/check_internet.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkUrl), body: data);
        print(response.statusCode);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          Map responsebody = jsonDecode(response.body);
          Get.defaultDialog(
              title: "Warning", middleText: responsebody['message']);
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.noInternet);
      }
    } catch (e) {
    
      return const Left(StatusRequest.serverexiption);
    }
  }
}
