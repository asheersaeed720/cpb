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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/get_started_bg.jpg'),
          ),
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.only(top: 70.0, left: 16.0, right: 16.0),
            children: [
              Text(
                'Create Account',
                style: kTitleStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name*',
                      style: kBodyStyle,
                    ),
                    const SizedBox(height: 8.0),
                    const CustomTextFieldWithOutIcon(
                      hintText: '',
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Last Name*',
                      style: kBodyStyle,
                    ),
                    const SizedBox(height: 8.0),
                    const CustomTextFieldWithOutIcon(
                      hintText: '',
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Email',
                      style: kBodyStyle,
                    ),
                    const SizedBox(height: 8.0),
                    const CustomTextFieldWithOutIcon(
                      hintText: '',
                      isEmail: true,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Password',
                      style: kBodyStyle,
                    ),
                    const SizedBox(height: 8.0),
                    const CustomTextFieldWithOutIcon(
                      hintText: '',
                      isPassword: true,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Confirm Password',
                      style: kBodyStyle,
                    ),
                    const SizedBox(height: 8.0),
                    const CustomTextFieldWithOutIcon(
                      hintText: '',
                      isPassword: true,
                    ),
                    const SizedBox(height: 36.0),
                    CustomAsyncBtn(
                      btntxt: 'CREATE ACCOUNT',
                      onPress: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
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
                  onPressed: () {},
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
