import 'dart:ui';

import 'package:cpb/src/auth/auth_controller.dart';
import 'package:cpb/src/donation_screen.dart';
import 'package:cpb/src/home/home_screen.dart';
import 'package:cpb/utils/constants.dart';
import 'package:cpb/widgets/custom_async_btn.dart';
import 'package:cpb/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInScreen extends StatelessWidget {
  static const String routeName = '/login';

  LogInScreen({Key? key}) : super(key: key);

  final _authController = Get.find<AuthController>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/get_started_bg.jpg'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 16.0, right: 16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/ic_launcher.png',
                  height: 136.0,
                ),
                const SizedBox(height: 42.0),
                Text('Email', style: kBodyStyle),
                const SizedBox(height: 6.0),
                CustomTextField(
                  controller: _emailController,
                  prefixIcon: Icons.email,
                  isEmail: true,
                  hintText: 'Email',
                ),
                const SizedBox(height: 12.0),
                Text('Password', style: kBodyStyle),
                const SizedBox(height: 6.0),
                CustomTextField(
                  controller: _passwordController,
                  prefixIcon: Icons.lock,
                  hintText: 'Password',
                  isPassword: true,
                  isShowSuffixIcon: true,
                ),
                const SizedBox(height: 6.0),
                InkWell(
                  onTap: () => createTripBottomSheet(context),
                  child: Text(
                    'Forgot Password',
                    style: kBodyStyle.copyWith(
                      color: Colors.black54,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                const SizedBox(height: 18.0),
                CustomAsyncBtn(
                  btntxt: 'LOGIN',
                  onPress: () async {
                    Get.toNamed(HomeScreen.routeName); // if (_formKey.currentState!.validate()) {
                    //   _formKey.currentState!.save();
                    //   FocusScopeNode currentFocus = FocusScope.of(context);
                    //   if (!currentFocus.hasPrimaryFocus) {
                    //     currentFocus.unfocus();
                    //   }
                    //   bool isAuth = await _authController.handleLogIn(
                    //     email: _emailController.text,
                    //     password: _passwordController.text,
                    //   );
                    //   if (isAuth) {
                    //     Get.offNamed(TabScreen.routeName);
                    //   }
                    // }
                  },
                ),
                const SizedBox(height: 60.0),
                SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double?>(0.0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) => kSecondaryColor,
                      ),
                    ),
                    onPressed: () => Get.toNamed(DonationScreen.routeName),
                    child: Row(
                      children: [
                        const Icon(Icons.money, color: Colors.white),
                        const SizedBox(width: 8.0),
                        Text(
                          'Donate To CPB',
                          style: kBodyStyle.copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  createTripBottomSheet(context) {
    final _formKey = GlobalKey<FormState>();
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return Container(
          // filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
          padding: const EdgeInsets.only(top: 30.0, bottom: 40.0, right: 16.0, left: 16.0),
          decoration: const BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                kSecondaryColor,
                kPrimaryColor,
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Container(
              //   width: 62.0,
              //   decoration: const BoxDecoration(
              //     border: Border(
              //       bottom: BorderSide(width: 4.0, color: Colors.grey),
              //     ),
              //   ),
              // ),
              Center(
                child: Text(
                  'Reset Password',
                  style: kTitleStyle.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'EMAIL',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 8),
              const CustomTextFieldWithOutIcon(
                hintText: 'Enter email here',
                borderRadius: 8.0,
                isEmail: true,
              ),
              const SizedBox(height: 10.0),
              const Spacer(),
              CustomAsyncBtn(
                btntxt: 'SEND CODE',
                onPress: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
