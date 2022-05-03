import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static const String routeName = '/notification';

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        iconTheme: const IconThemeData(color: kPrimaryColor),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        children: [
          Text('Latest Notification', style: kTitleStyle),
          const SizedBox(height: 10.0),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 3.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Icon(Icons.notifications_none),
                ),
                title: Text(
                  'Notification From Admin goes here...',
                  style: kBodyStyle.copyWith(fontSize: 14.0),
                ),
                subtitle: const Text('Lorem ipsum is dolar amit setm'),
                trailing: const Text('12:00 AM'),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 3.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Icon(Icons.notifications_none),
                ),
                title: Text(
                  'Notification From Admin goes here...',
                  style: kBodyStyle.copyWith(fontSize: 14.0),
                ),
                subtitle: const Text('Lorem ipsum is dolar amit setm'),
                trailing: const Text('12:00 AM'),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 3.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Icon(Icons.notifications_none),
                ),
                title: Text(
                  'Notification From Admin goes here...',
                  style: kBodyStyle.copyWith(fontSize: 14.0),
                ),
                subtitle: const Text('Lorem ipsum is dolar amit setm'),
                trailing: const Text('12:00 AM'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
