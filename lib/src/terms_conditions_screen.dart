import 'package:cpb/src/auth/views/auth_providers_screen.dart';
import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndConditionsController extends GetxController {
  bool isTermsRead = false;
  bool isPrivacyRead = false;
}

class TermsAndConditionsScreen extends StatelessWidget {
  static const String routeName = '/terms-conditions';

  const TermsAndConditionsScreen({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ic_launcher.png',
                height: 136.0,
              ),
              const SizedBox(height: 28.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10.0),
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: GetBuilder<TermsAndConditionsController>(
                  init: TermsAndConditionsController(),
                  builder: (tCController) => Column(
                    children: [
                      Text('Terms & Conditions', style: kTitleStyle.copyWith(fontSize: 26.0)),
                      const SizedBox(height: 10.0),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      ),
                      const SizedBox(height: 20.0),
                      InkWell(
                        onTap: () async {
                          String url = 'https://www.lipsum.com/';
                          if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
                        },
                        child: Text(
                          'Read full Terms & Conditions',
                          style: kBodyStyle.copyWith(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const Divider(indent: 16.0, endIndent: 16.0),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text('I agree  Read Full Terms & Conditions'),
                        value: tCController.isTermsRead,
                        onChanged: (value) {
                          tCController.isTermsRead = value ?? false;
                          tCController.update();
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text('I agree  Read Full Privacy Policy'),
                        value: tCController.isPrivacyRead,
                        onChanged: (value) {
                          tCController.isPrivacyRead = value ?? false;
                          tCController.update();
                        },
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: double.infinity,
                        height: 60.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.grey.shade400;
                                }
                                return Colors.white70;
                              },
                            ),
                          ),
                          onPressed: (tCController.isTermsRead && tCController.isPrivacyRead)
                              ? () {
                                  Get.toNamed(AuthProvidersScreen.routeName);
                                }
                              : null,
                          child: Text(
                            'ACCEPT',
                            style: kBodyStyle,
                          ),
                        ),
                      )
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
