import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_app/loginPage.dart';
import 'package:firebase_auth_app/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

//auth controller is responsible for navigating user
//across other pages based on user interaction
//accessible from all the pages across (globally)
class AuthController extends GetxController {
  //instance for AuthController
  //for accessible from all pages
  //.. AuthController.instance...
  static AuthController instance = Get.find();

  //firebase user model initialization
  //variable for firebase user
  //Rx is used for custom class
  //User is coming from firebase auth
  //User includes email, password,name, etc.
  late Rx<User?> _user;

  //properties and fields from firebase
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    // _user = auth.currentUser as Rx<User?>;
    //firebase instance
    _user = Rx<User?>(auth.currentUser);
    //our -user will be notified
    //for current activity of the user app
    _user.bindStream(auth.userChanges());
    //ever is getx function (helper funtion)
    //takes as listener and callback function
    //activates the current status
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    {
      if (user == null) {
        Get.offAll(() => LoginPage());
      } else {
        // print("Activity : Welcome Page");
        Get.offAll(() => WelcomePage(email: user.email!));
      }
    }
  }

  Future<void> register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print(e.toString());
      String error;
      String errorMessage = e.toString();
      if (errorMessage ==
          '[firebase_auth/invalid-email] The email address is badly formatted.') {
        error = 'Invalid Email';
      } else if (errorMessage ==
          '[firebase_auth/weak-password] Password should be at least 6 characters') {
        error = 'Password should be at least 6 characters';
      } else {
        error = 'Empty Details';
      }
      Get.snackbar(
        'About User',
        'User Message',
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          'Account Creation Failed!',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          error,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  Future<void> login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print(e.toString());
      String error;
      if (e.toString() ==
          '[firebase_auth/unknown] Given String is empty or null') {
        error = 'Empty Details';
      } else {
        error = 'Wrong Crediantials';
      }
      Get.snackbar(
        'About Login',
        'Login Message',
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          'Login Failed',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          error,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}
