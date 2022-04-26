import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/app_button.dart';
import 'package:global/presentation/elements/auth_text_field.dart';
import 'package:global/presentation/elements/background.dart';

class ForgotBody extends StatelessWidget {
  const ForgotBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController _emailController = TextEditingController();
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'hero',
            child: Image.asset(
              'assets/images/mainlogo.png',
              height: 150,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              "Forgot Your Password ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          AuthTextField(
              hint: 'Email',
              icon: Icons.email_outlined,
              validator: (val) {},
              controller: _emailController,
              onPwdTap: () {}),
          SizedBox(height: size.height * 0.03),
          Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: AppButton(
                  width: 170,
                  padding: 0,
                  borderRadius: 30,
                  name: 'Send Code',
                  onTapped: () {})),
        ],
      ),
    );
  }
}
