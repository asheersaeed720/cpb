import 'package:cpb/src/library/library.dart';
import 'package:cpb/src/library/library_controller.dart';
import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LibraryScreen extends StatelessWidget {
  static const String routeName = '/library';

  LibraryScreen({Key? key}) : super(key: key);

  final List<LibraryModel> _libBookList = LibraryModel.bookList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: GetBuilder<LibraryController>(
        init: LibraryController(),
        builder: (libraryController) => ListView(
          padding: const EdgeInsets.only(right: 14.0, left: 14.0),
          children: [
            _buildTabView(context, libraryController),
            const SizedBox(height: 12.0),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: _libBookList.length,
                separatorBuilder: (context, i) => const SizedBox(height: 10.0),
                itemBuilder: (context, i) => ListTile(
                  tileColor: kPrimaryColor.withOpacity(0.2),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset(_libBookList[i].img),
                  ),
                  title: Text(
                    _libBookList[i].title,
                    style: kBodyStyle,
                  ),
                  subtitle: Text(
                    _libBookList[i].authorName,
                    style: kBodyStyle.copyWith(color: kSecondaryColor, fontSize: 14.0),
                  ),
                  trailing: libraryController.isRecommendTabSelected
                      ? Wrap(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0, right: 8.0),
                              child: Text('15\$'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: const Text(
                                'Buy',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      : const Icon(Icons.delete, color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTabView(BuildContext context, LibraryController libController) {
    return Container(
      height: 54.0,
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kPrimaryColor.withOpacity(0.8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => libController.selectDownloadedTab(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: libController.isDownloadedTabSelected ? kSecondaryColor : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  'Downloaded',
                  style: kBodyStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => libController.selectDeviceTab(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: libController.isDeviceTabSelected ? kSecondaryColor : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  'Device',
                  style: kBodyStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => libController.selectRecommendTab(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: libController.isRecommendTabSelected ? kSecondaryColor : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  'Recommend',
                  style: kBodyStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
