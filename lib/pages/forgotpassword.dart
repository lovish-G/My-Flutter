import 'package:flutter/material.dart';

// ignore: camel_case_types
class forgotpassword extends StatefulWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

// ignore: camel_case_types
class _forgotpasswordState extends State<forgotpassword> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(""),
    ),
   body: Center(
      child: Container(
        child: const Text("work in progress",
        style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 50,
        ),),
      ),
      ),
    );
}}
