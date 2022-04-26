import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/views/auth/forgot/layout/forgot_body.dart';

class ForgotView extends StatelessWidget {
  const ForgotView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotBody(),
    );
  }
}
