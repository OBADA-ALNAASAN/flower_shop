import 'package:get/get.dart';

validInput(String val,int min,int max,String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
    if (type == 'email') {
      if (!GetUtils.isEmail(val)) {
        return "not valid email";
      }
    }
    if (type == 'phonenumber') {
      if (!GetUtils.isPhoneNumber(val)) {
        return "not valid Phone number";
      }
    }

  }
  if (val.length<min) {
     return "cant be less than $min";
  }
  if (val.length>max) {
     return "cant be larger than $max";
  }
  if (val.isEmpty) {
     return "cant be empty";
  }
}
