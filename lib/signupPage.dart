import 'package:firebase_auth_app/loginPage.dart';
import 'package:firebase_auth_app/welcomePage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
            height: h * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/signup.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.148,
                ),
                CircleAvatar(
                  radius: w * 0.15,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('img/profile.png'),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.08,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 1),
                  blurRadius: 10,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.deepOrangeAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    )),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(1, 1),
                    blurRadius: 10,
                    color: Colors.grey.withOpacity(0.5)),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Icon(
                  Icons.password_sharp,
                  color: Colors.deepOrangeAccent,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Already have account? ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: 'Log in',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(() => LoginPage());
                    },
                ),
              ]),
            ),
          ),
          SizedBox(
            height: h * 0.08,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomePage(),
                ),
              );
            },
            child: Container(
              height: h * 0.08,
              width: w * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage('img/loginbtn.png'),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.08,
          ),
          Text(
            "Sign up using on the following method",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('img/g.png'),
                  ),
                ),
                SizedBox(
                  width: w * 0.06,
                ),
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('img/t.png'),
                  ),
                ),
                SizedBox(
                  width: w * 0.06,
                ),
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('img/f.png'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
