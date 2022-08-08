import 'package:flutter/material.dart';
import 'package:flutter_myinsta/pages/signin_page.dart';
import 'package:flutter_myinsta/pages/signup_page.dart';
import 'package:flutter_myinsta/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id:(context)=>const SplashPage(),
        SignInPage.id:(context)=>const SignInPage(),
        SignUpPage.id:(context)=>const SignUpPage(),
      },
    );
  }
}


