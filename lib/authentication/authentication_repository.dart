import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revamph/authentication/exceptions/login_email_password_failure.dart';
import 'package:revamph/authentication/exceptions/signup_email_password_failure.dart';
import 'package:revamph/screens/profile/profile.dart';
import 'package:revamph/screens/welcome_page/welcome.dart';


class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  // variable
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const WelcomeScreen()) : Get.offAll(()=> const ProfileScreen());
  }

  Future <void> createUserWithEmailAndPassword(String email, String password) async{
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const ProfileScreen()) : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch(e){
      final ex = signUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      // throw ex;
      AlertDialog(
        title: Text(e.code),
      );
    }catch(_){
      const ex = signUpWithEmailAndPasswordFailure();
      print('EXCEPTION -${ex.message}');
      // throw ex;
    }
  } 


  Future <void> loginWithEmailAndPassword(String email, String password) async{
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(()=> const ProfileScreen()) : Get.to(()=> const WelcomeScreen());
    }
     on FirebaseAuthException 
    catch(e){
      final ex = loginWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      AlertDialog(
        title: Text(e.code),
      );
      
      // throw ex;
    }
    catch(e){
      const ex = loginWithEmailAndPasswordFailure();
      print ('EXCEPTION -${ex.message}');
      // throw ex;
    }
  }  

  Future <void> logOut() async => _auth.signOut();
}