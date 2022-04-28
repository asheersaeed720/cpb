import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 28.0, right: 14.0, left: 14.0),
        children: [
          _buildHomeSliderView(),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBtnView(
                context,
                'Start Reading',
                Icons.card_giftcard,
                () {},
              ),
              _buildBtnView(
                context,
                'Reading Plan',
                Icons.alarm,
                () {},
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          shareBtnView(),
          const SizedBox(height: 10.0),
          _buildBannerBtnView(),
          const SizedBox(height: 10.0),
          _buildPrayerWallView(),
          const SizedBox(height: 10.0),
          _buildAboutView(),
        ],
      ),
    );
  }

  Widget _buildHomeSliderView() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/home_banner.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildBtnView(BuildContext context, String text, IconData icon, onPress) {
    return SizedBox(
      height: 52.0,
      width: MediaQuery.of(context).size.width / 2.2,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFFa5de49)),
        ),
        onPressed: onPress,
        child: Row(
          children: [
            Icon(icon, color: Colors.black87),
            const SizedBox(width: 8.0),
            Text(text, style: const TextStyle(color: Colors.black87)),
          ],
        ),
      ),
    );
  }

  Widget shareBtnView() {
    return SizedBox(
      height: 46.0,
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(color: Colors.blue, width: 1.0),
          ),
          elevation: MaterialStateProperty.all(0.0),
          backgroundColor: MaterialStateProperty.all(
            const Color(0xFFeef6ff),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Share With your Friends',
              style: kBodyStyle.copyWith(color: Colors.blue, fontSize: 14.0),
            ),
            const Icon(Icons.forward, color: Colors.blue),
          ],
        ),
      ),
    );
  }

  Widget _buildBannerBtnView() {
    return Container(
      height: 62.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFa6d44f),
            Color(0xFF719e4f),
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        ),
        onPressed: () {},
        child: Row(
          children: [
            const Icon(Icons.money),
            const Spacer(),
            Text('Donate to CPB', style: kBodyStyle.copyWith(color: Colors.white)),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }

  Widget _buildPrayerWallView() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xFFf2e8cf),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Prayer Wall', style: kBodyStyle),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            tileColor: Color(0xFFf8f1e1),
            title: Text(
              'In Publishing and graphic design, Lorem ipsum is a placeholder.',
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(Icons.arrow_forward),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            tileColor: Color(0xFFf8f1e1),
            title: Text(
              'In Publishing and graphic design, Lorem ipsum is a placeholder.',
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(Icons.arrow_forward),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            tileColor: Color(0xFFf8f1e1),
            title: Text(
              'In Publishing and graphic design, Lorem ipsum is a placeholder.',
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutView() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFf2ffde),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: const Color(0xFFa6d44f),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Us', style: kBodyStyle),
          const SizedBox(height: 8.0),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Text('Read more'),
                Icon(Icons.arrow_forward),
              ],
            ),
          )
        ],
      ),
    );
  }
}
