import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revamph/authentication/authentication_repository.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Text Field Controller to get data from text form fields
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final mobilenumer = TextEditingController();
  final collegename = TextEditingController();
  final admissionyear = TextEditingController();
  final passoutyear = TextEditingController();

  // Calling this function from screen to do the authentication
  void registerUser( String userType, String name, String email, String password, String number, String college, String admissionyear, String passoutyear, BuildContext context){
    AuthenticationRepository.instance.registerUserWithEmailAndPassword(email, password, context);
    if(userType == "Student"){FirebaseFirestore.instance.collection("Student").add({"Full Name": name ,"e-mail":email, "Password" : password, "Mobile Numer": number, "College Number":college, "Admission Year":admissionyear});}
    else if(userType == "Faculty"){FirebaseFirestore.instance.collection("Faculty").add({"Full Name": name ,"e-mail":email, "Password" : password, "Mobile Numer": number, "College Number":college});}
    else if (userType == "Alumini"){FirebaseFirestore.instance.collection("Alumini").add({"Full Name": name ,"e-mail":email, "Password" : password, "Mobile Numer": number, "College Number":college, "Pass-Out Year":passoutyear});}
  }
}