import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/custom_app_bar.dart';
import 'package:global/presentation/views/setting/layout/setting_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Setting',leadingIcon: Icons.arrow_back,leadingColor: Colors.black),
      body: SettingBody(),
    );
  }
}
