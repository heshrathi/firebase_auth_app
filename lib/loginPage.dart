import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/loginimg.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: w,
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 43.0,
                ),
              ),
              Text(
                "Sign into your account",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Forgot password",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: w * 0.6,
          height: h * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              image: AssetImage("img/loginbtn.png"),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            'Sign in',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: h * 0.1,
        ),
        Container(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Don\'t have account? ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                  text: 'Create',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ))
            ]),
          ),
        )
      ]),
    );
  }
}
