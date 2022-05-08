import 'package:cpb/utils/constants.dart';
import 'package:cpb/widgets/custom_async_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

splitBottomModelSheet() async {
  final context = Get.context!;

  showModalBottomSheet(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter customSetState) {
          return Container(
            padding: const EdgeInsets.all(12.0),
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.only(
              //   topRight: Radius.circular(50.0),
              //   topLeft: Radius.circular(50.0),
              // ),
              color: Color(0xFF7eb717),
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
                const SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFa5de49),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    title: Text(
                      'Number of Panes',
                      style: kBodyStyle.copyWith(color: Colors.white),
                    ),
                    subtitle: const Text(
                      'Max 2',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            '2',
                            style: kBodyStyle.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Icon(Icons.arrow_drop_up_outlined, size: 34.0),
                        ),
                        const SizedBox(width: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Icon(Icons.arrow_drop_down, size: 34.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFa5de49),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Wrap(
                    children: [
                      RadioListTile(
                        value: '1',
                        groupValue: '1',
                        title: const Text('Tablet Format'),
                        onChanged: (value) {},
                      ),
                      RadioListTile(
                        value: '2',
                        groupValue: '2',
                        title: const Text('Web Format'),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Sync',
                  style: kTitleStyle.copyWith(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 4.0),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFe8ffc2),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    tileColor: Color(0xFFe8ffc2),
                    title: Text('Synchronization'),
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                      // activeTrackColor: Colors.lightBlue,
                      activeColor: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                CustomAsyncBtn(
                  btnColor: Color(0XFFa5de49),
                  btntxt: 'SAVE SETTING',
                  onPress: () {},
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
