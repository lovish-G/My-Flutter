import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

movetohome(BuildContext context) async {
  if(_formkey.currentState!.validate()){
   setState(() {
                      changebutton = true;
                    });
                   
                await Future.delayed(const Duration(seconds: 1));
                // ignore: use_build_context_synchronously
                 context.go('/homepage');
                   setState(() {
                      changebutton = false;
                    });
  }
}
@override
  Widget build(BuildContext context) {
      return Material (
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                    validator: (value) {
                      if(value!.isEmpty){
                        return"User name can`t be empty";
                      }
                      return null;
                    },
                ),
                    TextFormField(
                    decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return"password can`t be empty";
                      }
                      else if(value.length < 6 ){
                        return"password should be atleast 6";
                      }
                      return null;
                    },
                ),
                 SizedBox(
                  height: 10.0,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(onPressed: () => context.go('/password'),
                     child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.black,
                    ),
                    ))
                    ],
                ),
                 SizedBox(
                  height: 40.0,
                ),
                
                InkWell(
                  onTap: () =>movetohome(context),
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
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18 ),
                      ), 
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                  //      shape: changebutton? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                         BorderRadius.circular(changebutton ? 50 :8),
                         ),
                      ),
                ),
                 SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Dont`t have an account?"),
                    TextButton(onPressed: () => context.go('/signup'),
                     child: Text(
                      "Signup",
                      style: TextStyle(
                    fontSize:20,
                    ),
                    ))
                    ],
                ),
                 //  ElevatedButton(
              //  child: Text("Login"),
              //    style: TextButton.styleFrom(minimumSize: Size(150,40)),
              //    onPressed: () {
              //      Navigator.pushNamed(context, MyRoutes.homeRoute);
              //    },
              //    )
            ],
                  ),
            )
            ],
                  ),
          ) 
      )
      );
  }
}
