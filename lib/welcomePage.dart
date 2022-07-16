import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_app/authController.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/signup.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.21,
                ),
                CircleAvatar(
                  radius: w * 0.18,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('img/profile.png'),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.06,
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 43.0,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.2,
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.logout();
            },
            child: Container(
              width: w * 0.6,
              height: h * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: const DecorationImage(
                  image: AssetImage("img/loginbtn.png"),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Sign out',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
