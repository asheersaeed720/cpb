import 'dart:ui';

import 'package:cpb/src/bible/bible.dart';
import 'package:cpb/src/bible/bible_controller.dart';
import 'package:cpb/utils/constants.dart';
import 'package:cpb/widgets/custom_text_field.dart';
import 'package:cpb/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BibleScreen extends StatelessWidget {
  BibleScreen({Key? key}) : super(key: key);

  final _bibleController = Get.put(BibleController());

  @override
  Widget build(BuildContext context) {
    _bibleController.readJson();
    return Scaffold(
      body: GetBuilder<BibleController>(
        builder: (_) => Stack(
          clipBehavior: Clip.none,
          children: [
            FutureBuilder<List<BibleModel>>(
              future: _bibleController.readJson(),
              builder: (context, snapshot) {
                if (!snapshot.hasError) {
                  List<BibleModel> bibleData = snapshot.data ?? [];
                  List fieldList = [];

                  for (var element in bibleData) {
                    fieldList.add(element.field);
                  }

                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: ((context, i) => Text(fieldList[i])),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const LoadingWidget();
              },
            ),
            // ListView(
            //   padding: const EdgeInsets.symmetric(horizontal: 14.0),
            //   children: [
            //     Text('Apologetics', style: kTitleStyle),
            //     const SizedBox(height: 10.0),
            //     ListTile(
            //       onTap: () => Get.toNamed(BibleDetailScreen.routeName),
            //       contentPadding: EdgeInsets.zero,
            //       leading: ClipRRect(
            //         borderRadius: BorderRadius.circular(8.0),
            //         child: Image.asset(
            //           'assets/images/no_img_available.jpg',
            //           width: 120.0,
            //           height: 120.0,
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       title: Text(
            //         'Lorem ipsum dolar sit amet consectetur adipiscing',
            //         style: kBodyStyle.copyWith(fontSize: 14.0),
            //       ),
            //       subtitle: Column(
            //         children: [
            //           Row(
            //             children: const [
            //               Icon(Icons.date_range, size: 16.0, color: Colors.grey),
            //               SizedBox(width: 8.0),
            //               Text('Monday, 2 Dec 2022'),
            //             ],
            //           ),
            //           Row(
            //             children: const [
            //               Icon(Icons.comment, size: 16.0, color: Colors.grey),
            //               SizedBox(width: 8.0),
            //               Text('01'),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(height: 2.0),
            //     const Divider(),
            //     const SizedBox(height: 2.0),
            //     ListTile(
            //       contentPadding: EdgeInsets.zero,
            //       leading: ClipRRect(
            //         borderRadius: BorderRadius.circular(8.0),
            //         child: Image.asset(
            //           'assets/images/no_img_available.jpg',
            //           width: 120.0,
            //           height: 120.0,
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       title: Text(
            //         'Lorem ipsum dolar sit amet consectetur adipiscing',
            //         style: kBodyStyle.copyWith(fontSize: 14.0),
            //       ),
            //       subtitle: Column(
            //         children: [
            //           Row(
            //             children: const [
            //               Icon(Icons.date_range, size: 16.0, color: Colors.grey),
            //               SizedBox(width: 8.0),
            //               Text('Monday, 2 Dec 2022'),
            //             ],
            //           ),
            //           Row(
            //             children: const [
            //               Icon(Icons.comment, size: 16.0, color: Colors.grey),
            //               SizedBox(width: 8.0),
            //               Text('01'),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(height: 2.0),
            //     const Divider(),
            //     const SizedBox(height: 2.0),
            //     ListTile(
            //       contentPadding: EdgeInsets.zero,
            //       leading: ClipRRect(
            //         borderRadius: BorderRadius.circular(8.0),
            //         child: Image.asset(
            //           'assets/images/no_img_available.jpg',
            //           width: 120.0,
            //           height: 120.0,
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       title: Text(
            //         'Lorem ipsum dolar sit amet consectetur adipiscing',
            //         style: kBodyStyle.copyWith(fontSize: 14.0),
            //       ),
            //       subtitle: Column(
            //         children: [
            //           Row(
            //             children: const [
            //               Icon(Icons.date_range, size: 16.0, color: Colors.grey),
            //               SizedBox(width: 8.0),
            //               Text('Monday, 2 Dec 2022'),
            //             ],
            //           ),
            //           Row(
            //             children: const [
            //               Icon(Icons.comment, size: 16.0, color: Colors.grey),
            //               SizedBox(width: 8.0),
            //               Text('01'),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            _buildBottomSheetView(),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSheetView() {
    return DraggableScrollableSheet(
      initialChildSize: 0.10,
      minChildSize: 0.10,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              padding: const EdgeInsets.all(12.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18.0),
                  topLeft: Radius.circular(18.0),
                ),
                color: kPrimaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 64.0,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 6.0, color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  const Divider(thickness: 2.0),
                  const SizedBox(height: 6.0),
                  Text('Navigate to Chapter', style: kBodyStyle),
                  const SizedBox(height: 8.0),
                  const CustomTextFieldWithOutIcon(
                    borderRadius: 8.0,
                    hintText: 'Chapter Name / Verse #',
                  ),
                  const SizedBox(height: 8.0),
                  Text('Bible Books', style: kTitleStyle),
                  const SizedBox(height: 8.0),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/no_img_available.jpg',
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      'Title will goes here...',
                      style: kBodyStyle.copyWith(fontSize: 14.0),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
