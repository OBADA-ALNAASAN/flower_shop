import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flower_shop/core/class/statusrequest.dart';
import 'package:flower_shop/core/function/check_internet.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    if (await checkInternet()) {
      try {
        var response = await http.post(
          Uri.parse(linkUrl),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(data),
        );

        Map responsebody = jsonDecode(response.body);
        if (response.statusCode == 200 || response.statusCode == 201) {
          return Right(responsebody);
        } else {
          Get.defaultDialog(
              title: "Warning", middleText: responsebody['message'].toString());
          return const Left(StatusRequest.serverfailure);
        }
      } catch (e) {
        Get.defaultDialog(
            title: "Error", middleText: "Something went wrong: $e");
        return const Left(StatusRequest.serverexiption);
      }
    } else { Get.snackbar('', 'there is no internet');
      //Bmwm3@e94
      return const Left(StatusRequest.noInternet);
     
    }
  }
}
