

import 'package:global/helper/import_helper.dart';
import 'package:global/model/mesage.dart';
import 'package:global/presentation/views/chatting/layout/widgets/bottom_bar.dart';

import 'package:global/presentation/views/chatting/layout/widgets/message_row.dart';

class ChatViewBody extends StatefulWidget {
  const ChatViewBody({Key? key}) : super(key: key);

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}
TextEditingController _controller = TextEditingController();
final List<Message> messages = [
  Message(0,
      "But I may not go if the weather is bad. So lets see the weather condition 😀"),
  Message(1, "I suppose I am."),
];
class _ChatViewBodyState extends State<ChatViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       const SizedBox(height: 20,),
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10.0);
            },
            reverse: false,
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              Message m = messages[index];
              if (m.user == 0) {
                return MessageRowWidget(
                  current: true,
                  message: m,
                );
              }
              return MessageRowWidget(
                current: false,
                message: m,
              );
            },
          ),
        ),
        BottomBarWidget(controller: _controller)
      ],
    );
  }
}
