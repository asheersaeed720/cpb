import 'package:cpb/src/auth/auth_controller.dart';
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
                Text(
                  'Forgot Password',
                  style: kBodyStyle.copyWith(
                    color: Colors.black54,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 18.0),
                CustomAsyncBtn(
                  btntxt: 'LOGIN',
                  onPress: () async {
                    // if (_formKey.currentState!.validate()) {
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
                    onPressed: () => Get.toNamed(LogInScreen.routeName),
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
}
