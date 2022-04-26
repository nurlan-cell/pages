import 'package:global/helper/import_helper.dart';
import 'package:global/model/news_mode.dart';
import 'package:global/presentation/elements/news_feed.dart';

class NewsBody extends StatefulWidget {
  const NewsBody({Key? key}) : super(key: key);

  @override
  State<NewsBody> createState() => _NewsBodyState();
}

List<NewsModel> list = [
  NewsModel(
    img: 'assets/images/1.jpg',
    title: 'Dummy Picture',
    desc: 'Lorem ipsum Lorem Ipsum ',
    name: 'Harrly Queen',
    time: '12:00',
  ),
  NewsModel(
    title: 'Hello ',
    desc: 'When I say I love you more, I don’t mean I love you more than you love me. I mean I love you more than the bad days ahead of us, I love you more than any fight we will ever have. I love you more than the distance between us, I love you more than any obstacle that could try and come between us. I love you the most.” ',
    name: 'Mikii Queen',
    time: '12:00',
  ),
  NewsModel(
    img: 'assets/images/2.jpg',
    title: 'Dummy Picture',
    desc: 'Lorem ipsum Lorem Ipsum ',
    name: 'Harrly Queen',
    time: '12:00',
  ),
  NewsModel(
    title: 'Dummy Picture',
    desc: 'Lorem ipsum Lorem Ipsum ',
    name: 'Harrly Queen',
    time: '12:00',
  ),
  NewsModel(
    img: 'assets/images/4.jpg',
    title: 'Dummy Picture',
    desc: 'Lorem ipsum Lorem Ipsum ',
    name: 'Harrly Queen',
    time: '12:00',
  ),
  NewsModel(
    img: 'assets/images/3.jpg',
    title: 'Dummy Picture',
    desc: 'Lorem ipsum Lorem Ipsum ',
    name: 'Harrly Queen',
    time: '12:00',
  ),
  NewsModel(
    img: 'assets/images/1.jpg',
    title: 'Dummy Picture',
    desc: 'Lorem ipsum Lorem Ipsum ',
    name: 'Harrly Queen',
    time: '12:00',
  ),
  NewsModel(
    img: 'assets/images/2.jpg',
    title: 'Dummy Picture',
    desc: 'Lorem ipsum Lorem Ipsum ',
    name: 'Harrly Queen',
    time: '12:00',
  ),
];

class _NewsBodyState extends State<NewsBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
      child: Column(
        children: [
          Expanded(child: ListView.builder(
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
          }))
        ],
      ),
    );
  }
}
