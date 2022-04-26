import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/custom_app_bar.dart';
import 'package:global/presentation/views/manage_friends/layout/manage_body.dart';

class ManageFriends extends StatelessWidget {
  const ManageFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Manage Friends',
          icon: Icons.add,
          iconColor: Colors.redAccent,
          showText: true,
          bgColor: Colors.white,
          text: 'Friends',
          textColor: Colors.redAccent),
      body: const ManageFriendsBody(),
    );
  }
}
