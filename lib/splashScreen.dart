import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          image: DecorationImage(
            image: AssetImage("img/loginbtn.png"),
            fit: BoxFit.fill,
          ),
        ),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: h * 0.3,
              ),
              const Text(
                'Firebase Authentication',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: h * 0.2,
              ),
              const CircularProgressIndicator(
                backgroundColor: Colors.deepOrangeAccent,
                color: Colors.blueAccent,
                strokeWidth: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
