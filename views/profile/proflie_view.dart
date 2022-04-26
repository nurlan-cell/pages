import 'package:flutter/cupertino.dart';
import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/custom_app_bar.dart';
import 'package:global/presentation/views/profile/layout/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        'Profile',
        icon: Icons.settings,
        leadingColor: Colors.black,
        iconColor: Colors.grey,
        leadingIcon: Icons.arrow_back,
      ),
      body: const ProfileBody(),
    );
  }
}
