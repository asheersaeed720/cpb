import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = '/setting';

  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Setting'),
        iconTheme: const IconThemeData(color: kPrimaryColor),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(width: 1, color: kPrimaryColor),
            ),
            title: Text('User Interface', style: kBodyStyle),
            trailing: Switch(
              value: Get.isDarkMode,
              onChanged: (value) {
                Get.isDarkMode
                    ? Get.changeTheme(ThemeData.light())
                    : Get.changeTheme(ThemeData.dark());
              },
              activeTrackColor: Colors.black54,
              activeColor: Colors.black87,
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(width: 1.0, color: kPrimaryColor),
            ),
            child: ExpansionTile(
              title: Text('Fonts', style: kBodyStyle),
              children: <Widget>[
                ListTile(title: Text('This is tile number 1')),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(width: 1.0, color: kPrimaryColor),
            ),
            child: ExpansionTile(
              title: Text('General', style: kBodyStyle),
              children: <Widget>[
                ExpansionTile(
                  title: Text(
                    'Recently Used',
                    style: kBodyStyle.copyWith(fontSize: 14.0),
                  ),
                  children: <Widget>[],
                ),
                ExpansionTile(
                  title: Text(
                    'Content',
                    style: kBodyStyle.copyWith(fontSize: 14.0),
                  ),
                  children: <Widget>[],
                ),
                ExpansionTile(
                  title: Text(
                    'Bible Translations',
                    style: kBodyStyle.copyWith(fontSize: 14.0),
                  ),
                  children: <Widget>[],
                ),
              ],
            ),
          ),
          // ExpansionPanelList(
          //   children: [
          //     ExpansionPanel(
          //       headerBuilder: (context, _) {
          //         return Text('noob');
          //       },
          //       body: Text('noob'),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
