import 'package:cpb/src/bible/bible_detail_screen.dart';
import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BibleScreen extends StatelessWidget {
  const BibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        children: [
          Text('Apologetics', style: kTitleStyle),
          const SizedBox(height: 10.0),
          ListTile(
            onTap: () => Get.toNamed(BibleDetailScreen.routeName),
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/no_img_available.jpg',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Lorem ipsum dolar sit amet consectetur adipiscing',
              style: kBodyStyle.copyWith(fontSize: 14.0),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.date_range, size: 16.0, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('Monday, 2 Dec 2022'),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.comment, size: 16.0, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('01'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          const Divider(),
          const SizedBox(height: 2.0),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/no_img_available.jpg',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Lorem ipsum dolar sit amet consectetur adipiscing',
              style: kBodyStyle.copyWith(fontSize: 14.0),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.date_range, size: 16.0, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('Monday, 2 Dec 2022'),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.comment, size: 16.0, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('01'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 2.0),
          const Divider(),
          const SizedBox(height: 2.0),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/no_img_available.jpg',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Lorem ipsum dolar sit amet consectetur adipiscing',
              style: kBodyStyle.copyWith(fontSize: 14.0),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.date_range, size: 16.0, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('Monday, 2 Dec 2022'),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.comment, size: 16.0, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('01'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
