import 'package:flutter/cupertino.dart';
import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/news_feed.dart';
import 'package:global/presentation/views/news/layout/news_body.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/person.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Nurlan Baltleuov',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '23 year old',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const ImageIcon(
                    AssetImage(
                      'assets/images/settings.png',
                    ),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your Info',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Lorem Ipsum Lorem Ipsum'),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Lorem Ipsum Lorem Ipsum'),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Lorem Ipsum Lorem Ipsum'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _getButton(Colors.blue, 'Friends'),
                _getButton(Colors.green, 'Messages'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Posts',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, i) {
                    return NewsFeed(
                      name: list[i].name,
                      time: list[i].time,
                      title: list[i].title,
                      desc: list[i].desc,
                      img: list[i].img,
                      showImage: list[i].img != null ? true : false,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getButton(Color color, String text) {
    return Container(
      height: 35,
      width: 110,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      )),
    );
  }
}
