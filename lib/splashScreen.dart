import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: h * 0.3,
              ),
              Text(
                'Firebase Authentication',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: h * 0.2,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.blueAccent,
                color: Colors.deepOrangeAccent,
                strokeWidth: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
