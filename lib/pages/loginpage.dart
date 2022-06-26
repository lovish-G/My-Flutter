import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../user.dart';


class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  //TextEditingController nameController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();
  //static const String _title = 'Assignment';
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

movetohome(BuildContext context) async {
  if(_formkey.currentState!.validate()){
   setState(() {
                      changebutton = true;
                    });
                   
                await Future.delayed(const Duration(seconds: 1));
                // ignore: use_build_context_synchronously
                  ref.read(userProvider.notifier).login(
                              "myEmail",
                              "myPassword",
                            );
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
            child: Column(
            children:<Widget>[
              Image.asset(
                "assets/images/login-image.png",
              fit: BoxFit.cover,
              ),
          
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                   // controller: nameController,
                    decoration: const InputDecoration(
                     border: OutlineInputBorder(
                        ),
                      icon: Icon(Icons.person
                      ),
                      labelText: 'Email or User Name',
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return"User name can`t be empty";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                   // controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.password),
                      labelText: 'Password',
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
                ),
                SizedBox(
                  height: 20,
                ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(onPressed: () => ref.read(userProvider.notifier).password(
                      "my",
                      "me",
                    ),
                     child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.black,
                    ),
                    ))
                    ],
                ),
                SizedBox(
                  height: 20,
                ),
               InkWell(
                  onTap: () =>    ref.read(userProvider.notifier).login(
                              "myEmail",
                              "myPassword",
                            ),
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
                  height: 20,
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
                    ),),
                    ],
                ),
              ],
            ),),
      );
  }
}


