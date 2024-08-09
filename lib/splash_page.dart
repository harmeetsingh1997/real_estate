
import 'package:flutter/material.dart';
import 'package:state_testing/home_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    navigateToNextScreen();
    super.initState();
  }
  
  
  
  void navigateToNextScreen(){
    setState(() {
      Future.delayed(const Duration(seconds: 7),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()
        ),
        );
      }
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body:  Image.asset(
        'assets/house.png',

      ),
    );
  }}
