// SHA1: F5:BF:6D:F6:23:EB:E0:CD:4A:59:D0:C4:03:5C:43:A5:C8:B0:F8:1F
// SHA-256: 52:CD:C4:52:F6:A0:51:9D:1E:6F:FF:CF:48:F1:8B:2B:B2:05:29:4B:CA:4E:97:B5:E0:1A:A4:48:D6:29:98:65

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Info from text field--Controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future Signup() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 248, 248),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),

              Icon(
                Icons.android,
                size: 100,
                color: Color.fromARGB(232, 97, 6, 167),
              ),
              SafeArea(
                  child: Center(
                      child: Text(
                "HELLO AGAIN!",
                style: TextStyle(
                  color: Color.fromARGB(232, 97, 6, 167),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ))),

              //a message...
              SizedBox(
                height: 3,
              ),

              Text(
                "Welcome back you've been Missed.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),

              //TextField for Email
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    controller: _emailController,
                    style:
                        TextStyle(color: const Color.fromARGB(255, 23, 22, 23)),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'E-mail',
                        suffixIcon: Icon(Icons.mail)),
                  ),
                ),
              ),

              //Password Field

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 23, 22, 23),
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.password),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: GestureDetector(
                  onTap: Signup,
                  child: Container(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Color.fromARGB(255, 100, 14, 150),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //Redirect to sign up page
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member ?",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
