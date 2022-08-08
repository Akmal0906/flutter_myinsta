import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_myinsta/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String id = 'splash_page';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  initTimer(){
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context,SignInPage.id);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(253, 29, 29, 1),
              Color.fromARGB(225, 48, 108, 1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:const [
            Expanded(
                child: Center(
              child: Text(
                'Instagram',
                style: TextStyle(
                    color: Colors.white, fontSize: 45, fontFamily: 'Billabong'),
              ),
            )),
            Text(
              'All rigth reversed',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
