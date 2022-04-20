import 'package:cpb/src/auth/auth_controller.dart';
import 'package:cpb/src/auth/views/forgot_password_screen.dart';
import 'package:cpb/src/auth/views/signup_screen.dart';
import 'package:cpb/src/auth/widgets/header_widget.dart';
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
      body: ListView(
        children: [
          const HeaderWidget(),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text('Sign-In', style: kTitleStyle),
                  ),
                  const SizedBox(height: 6.0),
                  Image.asset('assets/images/divider.jpg', width: 100.0),
                  const SizedBox(height: 18.0),
                  CustomTextField(
                    controller: _emailController,
                    prefixIcon: Icons.email,
                    isEmail: true,
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 12.0),
                  CustomTextField(
                    controller: _passwordController,
                    prefixIcon: Icons.lock,
                    hintText: 'Password',
                    isPassword: true,
                    isShowSuffixIcon: true,
                  ),
                  const SizedBox(height: 12.0),
                  CustomAsyncBtn(
                    btntxt: 'LOGIN',
                    onPress: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        // bool isAuth = await _authController.handleLogIn(
                        //   email: _emailController.text,
                        //   password: _passwordController.text,
                        // );
                        // if (isAuth) {
                        //   Get.offNamed(TabScreen.routeName);
                        // }
                      }
                    },
                  ),
                  const SizedBox(height: 16.0),
                  _buildExtraDataView(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExtraDataView(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Get.toNamed(SignUpScreen.routeName),
          child: RichText(
            text: const TextSpan(
              text: 'New User?',
              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: ' Sign up',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => Get.toNamed(ForgotPasswordScreen.routeName),
          child: RichText(
            text: const TextSpan(
              text: 'Forgot',
              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: ' Password?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
