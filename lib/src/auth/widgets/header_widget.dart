import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, this.isSignUpScreen = false}) : super(key: key);

  final bool isSignUpScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 3.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/main_cover.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        !isSignUpScreen
            ? Container(
                height: MediaQuery.of(context).size.height / 3.0,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                ),
              )
            : Container(
                height: MediaQuery.of(context).size.height / 3.0,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/images/logo-white.png',
                      width: 60.0,
                      height: 60.0,
                    ),
                  ],
                ),
              ),
        if (isSignUpScreen)
          Positioned(
            top: 6.0,
            left: 8.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 6.0),
                Text(
                  'SIGN UP',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
