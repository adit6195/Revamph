import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:revamph/screens/login_page/widgets/loginform.dart';
import 'package:revamph/screens/login_page/widgets/loginheader.dart';
import 'package:revamph/screens/signup_page/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const LoginHeaderWidget(),
                const SizedBox(
                  height: 20,
                ),
                const LoginFormWidget(),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                   onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupScreen()));
                      },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(text:"Don't have an account? ",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),),
                          TextSpan(text: "Signup".toUpperCase(),style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),)
                        ]
                      )
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}