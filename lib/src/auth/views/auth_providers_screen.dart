import 'package:cpb/src/auth/auth_controller.dart';
import 'package:cpb/src/auth/views/login_screen.dart';
import 'package:cpb/src/auth/views/signup_screen.dart';
import 'package:cpb/src/tab_screen.dart';
import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthProvidersScreen extends StatelessWidget {
  static const String routeName = '/auth-providers';

  AuthProvidersScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          padding: const EdgeInsets.only(top: 80.0, left: 16.0, right: 16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Image.asset(
                  'assets/images/ic_launcher.png',
                  height: 136.0,
                ),
                const SizedBox(height: 42.0),
                Text(
                  'Login as a Guest',
                  style: kBodyStyle.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                const Divider(color: Colors.white, thickness: 1.5),
                const SizedBox(height: 24.0),
                _buildBtnView(
                  'assets/icons/email.png',
                  'Login with Email',
                  () => Get.toNamed(LogInScreen.routeName),
                ),
                const SizedBox(height: 14.0),
                GetBuilder<AuthController>(
                  builder: (authController) => _buildBtnView(
                    'assets/icons/google.png',
                    'Login with Google',
                    () async {
                      // loadingOverlay();
                      bool isAuth = await authController.handleGoogleAuth();
                      // Loader.hide();
                      if (isAuth) {
                        Get.offNamed(TabScreen.routeName);
                      }
                    },
                  ),
                ),
                const SizedBox(height: 14.0),
                _buildBtnView(
                  'assets/icons/apple.png',
                  'Login with Apple',
                  () {},
                ),
                const SizedBox(height: 14.0),
                _buildBtnView(
                  'assets/icons/facebook.png',
                  'Login with Facebook',
                  () {},
                ),
                const SizedBox(height: 24.0),
                Center(
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(SignUpScreen.routeName);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Haven't Register Yet? ",
                        style: kBodyStyle.copyWith(fontFamily: 'Poppins'),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Register Yourself',
                            style: kBodyStyle.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBtnView(String imgPath, String text, Function()? onPress) {
    return SizedBox(
      height: 62.0,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double?>(0.0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) => textFieldBg,
          ),
        ),
        onPressed: onPress,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.asset(imgPath, width: 34.0),
            ),
            const SizedBox(width: 10.0),
            Text(
              text,
              style: kBodyStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
