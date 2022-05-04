import 'dart:async';

import 'package:cpb/src/auth/auth_controller.dart';
import 'package:cpb/src/tab_screen.dart';
import 'package:cpb/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  static const String routeName = '/email-verification';

  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final _auth = FirebaseAuth.instance;

  Timer? timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/email_verify.png', width: 132.0, height: 132.0),
            const SizedBox(height: 12.0),
            Text(
              'Email Verification',
              textAlign: TextAlign.center,
              style: kTitleStyle,
            ),
            const SizedBox(height: 12.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                'An email has been to ${_auth.currentUser?.email} please verify',
                textAlign: TextAlign.center,
                style: kBodyStyle,
              ),
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                ),
                onPressed: () async {
                  await Get.find<AuthController>().logoutUser();

                  // showAlertDialog(
                  //   context,
                  //   'Logout',
                  //   'Are you sure, your want to logout?',
                  //   () async {
                  //     await Get.find<AuthController>().logoutUser();
                  //   },
                  // );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.logout, color: Colors.black87),
                    const SizedBox(width: 8.0),
                    Text('Logout', style: kBodyStyle.copyWith(color: Colors.black87)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> checkEmailVerified() async {
    User? user = _auth.currentUser;
    await _auth.currentUser?.reload();
    if (user!.emailVerified) {
      timer!.cancel();
      Get.offAndToNamed(TabScreen.routeName);
    }
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }
}
