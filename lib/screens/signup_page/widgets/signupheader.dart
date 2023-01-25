import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignupHeaderWidget extends StatefulWidget {
  const SignupHeaderWidget({super.key});

  @override
  State<SignupHeaderWidget> createState() => _SignupHeaderWidgetState();
}

class _SignupHeaderWidgetState extends State<SignupHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(image: const AssetImage("image/welcome.png"), height: size.height*0.2),
        const Text("Get On Board!",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        const Text("Create your profile to start your journey.",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500))
      ],
    );
  }
}