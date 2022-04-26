import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/views/auth/signup_view/layout/signup_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpBody(),
    );
  }
}
