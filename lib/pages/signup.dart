import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

// ignore: camel_case_types
class _signupState extends State<signup> {
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
      return Material (
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
          children: [
            Image.asset(
              "assets/images/login-image.png",
            fit: BoxFit.cover,
            ),

            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                  ),
              ),
                  TextFormField(
                  decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                  ),
              ),
               SizedBox(
                height: 10.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Conform Password",
                  ),
              ),
               SizedBox(
                height: 40.0,
              ),
              InkWell(
               onTap: () => context.go('/HomePage'),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changebutton? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changebutton?Icon(
                    Icons.done,
                    color: Colors.white,
                    ) 
                    : Text(
                    "signup",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18 ),
                    ), 
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                     borderRadius:
                       BorderRadius.circular(changebutton ? 50 :8),
                       ),
                    ),
              ),
          ],
                ),
          )
          ],
        ) 
      )
      );
  }
}
