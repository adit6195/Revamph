// import 'dart:html';
// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:revamph/controller/signup_controller.dart';

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({super.key});

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  

  final _userType = ["Student", "Faculty", "Alumini"];
  String? _selectedvalue = "";
  // File? _image;
// Future getImage(ImageSource source) async{
//   final image = await ImagePicker().pickImage(source: source);
//   if(image == null) return;
//   final imageTemporary = File(image.path);
//   setState(() {
//     _image = imageTemporary;
//   });
// }


  @override
  void initState(){
    super.initState();
    _selectedvalue = _userType[0];
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formkey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField(
              value: _selectedvalue,
              items: _userType
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _selectedvalue = val as String;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                  prefix: Icon(
                    Icons.switch_account_outlined,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  label: Text("User Type")),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value != null) {
                  return null;
                }
                return "This field is important";
              },
              controller: controller.name,
              decoration: const InputDecoration(
                label: Text("Full Name *"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              validator: (value) {
                if (value != null) {
                  return null;
                }
                return "This field is important";
              },
              controller: controller.email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: Text("Email *"),
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
            const SizedBox(height: 10),
            TextFormField(
              validator: (value) {
                if (value != null) {
                  return null;
                }
                return "This field is important";
              },
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text("Password *"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.fingerprint,
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              validator: (value) {
                if (value != null) {
                  return null;
                }
                return "This field is important";
              },
              controller: controller.mobilenumer,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                label: Text("Mobile Number *"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              validator: (value) {
                if (value != null) {
                  return null;
                }
                return "This field is important";
              },
              controller: controller.collegename,
              decoration: const InputDecoration(
                label: Text("College Name *"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if(_selectedvalue == "Student")
            TextFormField(
              validator: (value) {
                if (value != null) {
                  return null;
                }
                return "This field is important";
              },
              controller: controller.admissionyear,
              keyboardType: TextInputType.datetime,
              decoration: const InputDecoration(
                label: Text("Admission Year *"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            if(_selectedvalue == "Alumini")
            TextFormField(
              keyboardType: TextInputType.datetime,
              validator: (value) {
                if (value != null) {
                  return null;
                }
                return "This field is important";
              },
              controller: controller.passoutyear,
              decoration: const InputDecoration(
                label: Text("Pass out Year *"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // const Text("Pick a Profile Picture*",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
            // const SizedBox(
            //   height: 15,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Expanded(
            //       child: OutlinedButton(
            //         style: OutlinedButton.styleFrom(
            //           shape: const RoundedRectangleBorder(),
            //           foregroundColor: Colors.black,
            //           side: const BorderSide(color: Colors.black),
            //           padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 8)
            //         ),
            //         onPressed: () {
            //           getImage(ImageSource.camera);
            //         }, 
            //         child: Row(
            //           children: const [
            //             Text("Pick from Camera"),
            //             Icon(Icons.camera)
            //           ],
            //         )),
            //     ),
            //     const SizedBox(
            //       width: 7,
            //     ),
            //     Expanded(
            //       child: OutlinedButton(
            //         style: OutlinedButton.styleFrom(
            //           shape: const RoundedRectangleBorder(),
            //           foregroundColor: Colors.black,
            //           side: const BorderSide(color: Colors.black),
            //           padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10)
            //         ),
            //         onPressed: () {
            //           getImage(ImageSource.gallery);
            //         }, 
            //         child: Row(
            //           children: const[
            //             Text("Pick from Gallery"),
            //             Icon(Icons.image)
            //           ],
            //         )),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black),
                      padding: const EdgeInsets.all(16.5)),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      SignupController.instance.registerUser(
                        _selectedvalue!,
                        controller.name.text.trim(),
                          controller.email.text.trim(),
                          controller.password.text.trim(),
                          controller.mobilenumer.text.trim(),
                          controller.collegename.text.trim(),
                          controller.admissionyear.text.trim(),
                          controller.passoutyear.text.trim(),
                          );
                    }
                  },
                  child: Text("Signup".toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
}
