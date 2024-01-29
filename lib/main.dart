import 'package:flutter/material.dart';
import 'package:flutterlogin/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized;

   await Firebase.initializeApp;
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign up Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
