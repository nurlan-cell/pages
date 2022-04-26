import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/app_button.dart';
import 'package:global/presentation/elements/auth_text_field.dart';
import 'package:global/presentation/elements/background.dart';
import 'package:global/presentation/views/auth/forgot/forgot_view.dart';
import 'package:global/presentation/views/auth/signup_view/sign_up_view.dart';
import 'package:global/presentation/views/news/news_view.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _pwdController = TextEditingController();
    Size size = MediaQuery.of(context).size;
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
              "Sign In",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 28),
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
          AuthTextField(
              hint: 'Password',
              icon: Icons.lock_open,
              validator: (val) {},
              controller: _pwdController,
              onPwdTap: () {}),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForgotView()));
            },
            child: Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: const Text(
                "Forgot your password?",
                style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: AppButton(
                  padding: 0,
                  width: 170,
                  borderRadius: 30,
                  name: 'Login',
                  onTapped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewsView()));
                  })),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpView()))
              },
              child: const Text(
                "Don't Have an Account? Sign up",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
