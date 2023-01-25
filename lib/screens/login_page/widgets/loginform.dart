import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:revamph/controller/login_controller.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formkey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: Text("Email"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label:  Text("Password"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.fingerprint,
                  color: Colors.black,
                ),
                // suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.remove_red_eye_sharp)),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: TextButton(
            //     onPressed: () {},
            //     child: const Text("Forget Password?",style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    padding: const EdgeInsets.all(16.5)
                  ),
                  onPressed: () {
                    if(_formkey.currentState!.validate()){
                      LoginController.instance.loginUser(controller.email.text.trim(), controller.password.text.trim());
                    }
                  }, child: Text("Login".toUpperCase())),
            ),
          ],
        ),
      ),
    );

  }
}