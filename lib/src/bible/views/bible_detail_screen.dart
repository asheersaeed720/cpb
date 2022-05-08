import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';

class BibleDetailScreen extends StatelessWidget {
  static const String routeName = '/bible-detail';
  const BibleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bible Detail'),
        iconTheme: const IconThemeData(color: kPrimaryColor),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(Icons.alarm_rounded),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        children: [
          Text('Lorem ipsum Dolor sit amet, consectetur', style: kTitleStyle),
          const SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/no_img_available.jpg',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Row(
                children: const [
                  Icon(Icons.date_range, size: 16.0, color: Colors.grey),
                  SizedBox(width: 8.0),
                  Text('Monday, 2 Dec 2022'),
                ],
              ),
              const Spacer(),
              Row(
                children: const [
                  Icon(Icons.comment, size: 16.0, color: Colors.grey),
                  SizedBox(width: 8.0),
                  Text('01'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
          ),
        ],
      ),
    );
  }
}
