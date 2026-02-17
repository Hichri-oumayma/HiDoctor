import 'dart:async';
import 'package:firstapp/Screens/onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
   Timer(
  const Duration(seconds: 900),
  () => Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => Onboarding()),
  ),
   );
    super.initState();
  }
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1CA7A6),
            const Color.fromARGB(255, 33, 179, 179),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logoapp.png', height: 170, width: 170),
          const SizedBox(height: 0), 
          Text(
            "HiDoctor",
            style: TextStyle(
              color: Colors.white,
              fontSize:30,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
    ),
  );
}}