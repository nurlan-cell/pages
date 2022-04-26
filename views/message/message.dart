import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/custom_app_bar.dart';
import 'package:global/presentation/views/message/layout/message_body.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Manage Chat',
          icon: Icons.add, leadingIcon: Icons.arrow_back, onPressed: () {
        Navigator.pop(context);
      }, iconColor: Colors.redAccent),
      body: const MessageBody(),
    );
  }
}
