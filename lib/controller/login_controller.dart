import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../authentication/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  // Text Field Controller to get data from text form fields

  final email = TextEditingController();
  final password = TextEditingController();

  // Calling this function from screen to do the authentication
  void loginUser(String email, String password){
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }
}