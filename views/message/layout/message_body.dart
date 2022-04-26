import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global/presentation/elements/search_field.dart';
import 'package:global/presentation/views/chatting/chat_view.dart';
import 'package:global/presentation/views/message/layout/widgets/message_list.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          const SearchField(),
          Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            Get.to(ChatView(),
                                transition: Transition.cupertino);
                          },
                          child: MessageList('Nikola Kovac', '12.43',
                              'How do you do', 'assets/images/person.jpg')),
                    );
                  }))
        ],
      ),
    );
  }
}
