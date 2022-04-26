import 'package:global/helper/import_helper.dart';

class MessageList extends StatelessWidget {
  String name;
  String time;
  String message;
  String img;

  MessageList(this.name, this.time, this.message, this.img);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage(img),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      message,
                      style: const TextStyle(
                          fontSize: 9, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
