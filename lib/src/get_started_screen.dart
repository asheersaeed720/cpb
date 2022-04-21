import 'package:cpb/src/terms_conditions_screen.dart';
import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartedScreen extends StatelessWidget {
  static const String routeName = '/get-started';

  const GetStartedScreen({Key? key}) : super(key: key);

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ic_launcher.png',
                height: 136.0,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 50.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double?>(0.0),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) => Colors.white70,
                    ),
                  ),
                  onPressed: () => Get.toNamed(TermsAndConditionsScreen.routeName),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'GET STARTED',
                        style: kBodyStyle,
                      ),
                      const SizedBox(width: 8.0),
                      const Icon(Icons.arrow_forward, color: Colors.black87)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
