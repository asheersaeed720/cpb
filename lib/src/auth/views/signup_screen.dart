import 'package:cpb/src/auth/auth_controller.dart';
import 'package:cpb/utils/constants.dart';
import 'package:cpb/widgets/custom_async_btn.dart';
import 'package:cpb/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign-up';

  SignUpScreen({Key? key}) : super(key: key);

  final _authController = Get.find<AuthController>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text('Create an Account', style: kTitleStyle),
                  ),
                  const SizedBox(height: 6.0),
                  Image.asset('assets/images/divider.jpg', width: 100.0),
                  const SizedBox(height: 18.0),
                  CustomTextField(
                    controller: _nameController,
                    prefixIcon: Icons.person,
                    hintText: 'Name',
                  ),
                  const SizedBox(height: 12.0),
                  CustomTextField(
                    controller: _emailController,
                    prefixIcon: Icons.email,
                    hintText: 'Email',
                    isEmail: true,
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
                    btntxt: 'SIGN UP NOW',
                    onPress: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        // bool isAuth = await _authController.handleSignUp(
                        //   name: _nameController.text,
                        //   email: _emailController.text,
                        //   password: _passwordController.text,
                        // );
                        // if (isAuth) {
                        //   Get.offAllNamed(TabScreen.routeName);
                        // }
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
