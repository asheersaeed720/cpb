import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';

class StartReadingScreen extends StatelessWidget {
  static const String routeName = '/start-reading';

  const StartReadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Reading'),
        iconTheme: const IconThemeData(color: kPrimaryColor),
      ),
    );
  }
}
