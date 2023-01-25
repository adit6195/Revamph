import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:revamph/authentication/authentication_repository.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("In Progess".toUpperCase()),
        actions: [
          Container(
            child: IconButton(
              onPressed: () {
                AuthenticationRepository.instance.logOut();
              },
              icon: Icon(Icons.logout),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Center(child: Text("This page is still in progress.",style: TextStyle(fontSize: 20),)),
        ),
      ),
    );
  }
}