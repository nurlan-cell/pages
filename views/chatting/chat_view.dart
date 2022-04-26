
import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/views/chatting/layout/chat_view_body.dart';
import 'package:global/presentation/views/chatting/layout/widgets/build_app_bar.dart';


class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), child: BuildAppBar()),
      body: ChatViewBody(),
    );
  }
}
