import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:revamph/screens/login_page/login.dart';
import 'package:revamph/screens/signup_page/widgets/signupform.dart';
import 'package:revamph/screens/signup_page/widgets/signupheader.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children:[
                const SignupHeaderWidget(),
                const SizedBox(
                  height: 13,
                ),
                const SignupFormWidget(),
                TextButton(
                 onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                    },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text:"Already have an account? ",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),),
                        TextSpan(text: "Login".toUpperCase(),style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),)
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