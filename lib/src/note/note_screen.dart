import 'package:cpb/src/note/note_controller.dart';
import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoteScreen extends StatelessWidget {
  NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<NoteController>(
        init: NoteController(),
        builder: (noteController) => ListView(
          padding: const EdgeInsets.only(right: 14.0, left: 14.0),
          children: [
            _buildTabView(context, noteController),
            const SizedBox(height: 12.0),
            const Text('Highlight'),
            const SizedBox(height: 12.0),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: 20,
                separatorBuilder: (context, i) => const SizedBox(height: 10.0),
                itemBuilder: (context, i) => ListTile(
                  tileColor: kPrimaryColor.withOpacity(0.2),
                  horizontalTitleGap: 6.0,
                  leading: const Icon(Icons.edit, color: kPrimaryColor),
                  title: Text(
                    'Chapter / Verse / Word',
                    style: kBodyStyle,
                  ),
                  subtitle: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        '18 Jun, 10:30 AM',
                        style: TextStyle(color: kSecondaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.delete, color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTabView(BuildContext context, NoteController noteController) {
    return Container(
      height: 60.0,
      // padding: const EdgeInsets.all(6.0),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(8.0),
      //   color: kPrimaryColor.withOpacity(0.8),
      // ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: noteController.isHighlightedTabSelected ? kSecondaryColor : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: const [
                  Icon(Icons.highlight_alt_rounded, color: Colors.white),
                  Text(
                    'HIGHLIGHT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 6.0),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: noteController.isBorderlineTabSelected ? kSecondaryColor : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.border_all,
                    color: noteController.isBorderlineTabSelected ? Colors.white : kPrimaryColor,
                  ),
                  Text(
                    'BORDERLINE',
                    style: TextStyle(
                      color: noteController.isBorderlineTabSelected ? Colors.white : kPrimaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 6.0),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: noteController.isUnderlineTabSelected ? kSecondaryColor : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.format_underline,
                    color: noteController.isUnderlineTabSelected ? Colors.white : kPrimaryColor,
                  ),
                  Text(
                    'UNDERLINE',
                    style: TextStyle(
                      color: noteController.isUnderlineTabSelected ? Colors.white : kPrimaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 6.0),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: noteController.isNoteTabSelected ? kSecondaryColor : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.note_add,
                    color: noteController.isNoteTabSelected ? Colors.white : kPrimaryColor,
                  ),
                  Text(
                    'NOTES',
                    style: TextStyle(
                      color: noteController.isNoteTabSelected ? Colors.white : kPrimaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 6.0),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: noteController.isBookmarkTabSelected ? kSecondaryColor : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.book,
                    color: noteController.isBookmarkTabSelected ? Colors.white : kPrimaryColor,
                  ),
                  Text(
                    'BOOKMARK',
                    style: TextStyle(
                      color: noteController.isBookmarkTabSelected ? Colors.white : kPrimaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
