import 'package:cpb/utils/constants.dart';
import 'package:flutter/material.dart';

class BookModel {
  final String title;
  final String img;
  final String price;
  BookModel({
    required this.title,
    required this.img,
    required this.price,
  });
}

class StoreScreen extends StatelessWidget {
  static const String routeName = '/store';

  StoreScreen({Key? key}) : super(key: key);

  final List<BookModel> _bookList = [
    BookModel(
      title: 'Book Name Here',
      img: 'assets/images/no_img_available.jpg',
      price: '25 \$',
    ),
    BookModel(
      title: 'Book Name Here',
      img: 'assets/images/no_img_available.jpg',
      price: '25 \$',
    ),
    BookModel(
      title: 'Book Name Here',
      img: 'assets/images/no_img_available.jpg',
      price: '25 \$',
    ),
    BookModel(
      title: 'Book Name Here',
      img: 'assets/images/no_img_available.jpg',
      price: '25 \$',
    ),
    BookModel(
      title: 'Book Name Here',
      img: 'assets/images/no_img_available.jpg',
      price: '25 \$',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        iconTheme: const IconThemeData(color: kPrimaryColor),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(Icons.alarm_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              _buildChipView(),
              const SizedBox(height: 6.0),
              _buildBibleBooksView(context),
              const SizedBox(height: 6.0),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0, bottom: 6.0),
                child: Row(
                  children: [
                    const Icon(Icons.book_online_rounded),
                    const SizedBox(width: 6.0),
                    Text('Audio Bibles', style: kBodyStyle),
                  ],
                ),
              ),
              const SizedBox(height: 6.0),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: _bookList
                    .map(
                      (e) => Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6.0),
                            child: Image.asset(
                              e.img,
                              width: 100.0,
                              height: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(e.title),
                          const SizedBox(height: 4.0),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 32.0),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Text(
                              e.price,
                              style: kBodyStyle.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChipView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Chip(
          labelPadding: const EdgeInsets.all(2.0),
          label: Text(
            'Recommended',
            style: kBodyStyle.copyWith(color: Colors.blue, fontSize: 12.0),
          ),
          backgroundColor: Colors.blue.shade50,
          elevation: 6.0,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.all(8.0),
        ),
        Chip(
          labelPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
          label: Text(
            'Free',
            style: kBodyStyle.copyWith(color: Colors.cyan, fontSize: 12.0),
          ),
          backgroundColor: Colors.cyan.shade100,
          elevation: 6.0,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.all(8.0),
        ),
        Chip(
          labelPadding: const EdgeInsets.all(2.0),
          label: Text(
            'Purchased',
            style: kBodyStyle.copyWith(color: Colors.red, fontSize: 12.0),
          ),
          backgroundColor: Colors.red.shade50,
          elevation: 6.0,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.all(8.0),
        ),
        Chip(
          labelPadding: const EdgeInsets.all(2.0),
          label: Text(
            'Wishlist',
            style: kBodyStyle.copyWith(color: Colors.orange, fontSize: 12.0),
          ),
          backgroundColor: Colors.orange.shade100,
          elevation: 6.0,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.all(8.0),
        ),
      ],
    );
  }

  Widget _buildBibleBooksView(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: kPrimaryColor.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0, bottom: 4.0),
            child: Row(
              children: [
                const Icon(Icons.book_online_outlined),
                const SizedBox(width: 6.0),
                Text('Bibles', style: kBodyStyle),
                const Spacer(),
                const Text('See All'),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Scrollbar(
              // isAlwaysShown: true,
              thickness: 10.0,
              child: ListView.separated(
                separatorBuilder: (context, _) => const SizedBox(height: 8.0),
                itemCount: 6,
                itemBuilder: (context, i) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: Image.asset(
                            'assets/images/no_img_available.jpg',
                            width: 128.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('BIBLE BOOK NAME', style: kBodyStyle),
                            Text(
                              'AUTHOR NAME',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              children: [
                                Text('FREE', style: kBodyStyle),
                                const SizedBox(width: 50.0),
                                SizedBox(
                                  height: 28.0,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Download'),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(32.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAudioBibleView(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0, bottom: 6.0),
              child: Row(
                children: [
                  const Icon(Icons.book_online_rounded),
                  const SizedBox(width: 6.0),
                  Text('Audio Bibles', style: kBodyStyle),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 8,
              itemBuilder: (BuildContext ctx, index) {
                return GridTile(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset(
                      'assets/images/no_img_available.jpg',
                      height: 100.0,
                    ),
                  ),
                  footer: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Download'),
                  ),
                ); /*Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: Image.asset(
                        'assets/images/no_img_available.jpg',
                        height: 100.0,
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    const Text('Book Name Here'),
                    const SizedBox(height: 6.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Download'),
                    ),
                  ],
                );*/
              },
            ),
          ],
        ),
      ),
    );
  }
}
