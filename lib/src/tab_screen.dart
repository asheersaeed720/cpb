import 'package:cpb/src/home/home_screen.dart';
import 'package:cpb/src/library/library_screen.dart';
import 'package:cpb/src/note/note_screen.dart';
import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabController extends GetxController {
  int selectedIndex = 2;
  String title = 'Home';

  onItemTapped(int index) {
    selectedIndex = index;
    if (index == 0) {
      title = 'Bible';
    } else if (index == 1) {
      title = 'Notes';
    } else if (index == 2) {
      title = 'Home';
    } else if (index == 3) {
      title = 'Split';
    } else {
      title = 'Brower';
    }
    update();
  }
}

class TabScreen extends StatelessWidget {
  static const String routeName = '/tab';

  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      const HomeScreen(),
      NoteScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
    ];

    return DefaultTabController(
      length: 5,
      child: GetBuilder<TabController>(
        init: TabController(),
        builder: (tabController) => Scaffold(
          appBar: AppBar(
            title: Text(tabController.title),
            iconTheme: const IconThemeData(color: kPrimaryColor),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Icon(Icons.alarm_rounded),
              ),
            ],
          ),
          drawer: _buildDrawerView(),
          body: _widgetOptions.elementAt(tabController.selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Bible',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.note_add),
                label: 'Notes',
              ),
              BottomNavigationBarItem(
                // icon: SizedBox(height: 24.0),
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.splitscreen),
                label: 'Split',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.browser_updated),
                label: 'Brower',
              ),
            ],
            currentIndex: tabController.selectedIndex,
            unselectedItemColor: iconColorLightGreen,
            selectedItemColor: kPrimaryColor,
            backgroundColor: const Color(0xFF41561b),
            onTap: tabController.onItemTapped,
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerView() {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Color(0xFFa6d44f),
              kPrimaryColor,
              // Color(0xFF719e4f),
              kSecondaryColor,
            ],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150.0,
              child: DrawerHeader(
                duration: const Duration(milliseconds: 500),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 119, 167, 30),
                      Color(0xFF3e6400),
                    ],
                  ),
                ),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/images/no_img_available.jpg',
                        width: 42.0,
                        height: 42.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text('USERNAME', style: kBodyStyle.copyWith(color: Colors.white)),
                  subtitle: const Text(
                    'userEmail@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            // ListTile(
            //   leading: const Icon(Icons.home, color: Colors.white),
            //   title: Text(
            //     'Home',
            //     style: kBodyStyle.copyWith(color: Colors.white),
            //   ),
            //   onTap: () {
            //     Get.back();
            //   },
            // ),
            // const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.library_add, color: Colors.white),
              title: Text(
                'Library',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              onTap: () {
                Get.back();
                Get.toNamed(LibraryScreen.routeName);
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.store, color: Colors.white),
              title: Text(
                'Store',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              onTap: () {
                Get.back();
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.mic, color: Colors.white),
              title: Text(
                'Voice Recorder',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              onTap: () {
                Get.back();
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: Text(
                'Setting',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              onTap: () {
                Get.back();
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.star, color: Colors.white),
              title: Text(
                'Rate Us',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              onTap: () {
                Get.back();
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.feedback_outlined, color: Colors.white),
              title: Text(
                'Feedback',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              onTap: () {
                Get.back();
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: Text(
                'Server Setting',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              onTap: () {
                Get.back();
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title: Text(
                'Logout',
                style: kBodyStyle.copyWith(color: Colors.white),
              ),
              onTap: () {
                Get.back();
              },
            ),
            const Divider(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
