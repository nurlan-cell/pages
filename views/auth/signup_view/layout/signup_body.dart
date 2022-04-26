import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/app_button.dart';
import 'package:global/presentation/elements/auth_text_field.dart';
import 'package:global/presentation/elements/background.dart';
import 'package:global/presentation/views/auth/login_view/login_view.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _pwdController = TextEditingController();
    TextEditingController _CpwdController = TextEditingController();
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
              "Sign Up",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28
              ),
              textAlign: TextAlign.left,
            ),
          ),

          SizedBox(height: size.height * 0.03),

          AuthTextField(hint: 'Name',
              icon: Icons.person,
              validator: (val){},
              controller: _nameController,
              onPwdTap: (){}),
          AuthTextField(hint: 'Email',
              icon: Icons.email_outlined,
              validator: (val){},
              controller: _emailController,
              onPwdTap: (){}),
          AuthTextField(hint: ' Password',
              icon: Icons.lock_open,
              validator: (val){},
              controller: _pwdController,
              onPwdTap: (){}),
          AuthTextField(hint: 'Confirm Password',
              icon: Icons.lock_open,
              validator: (val){},
              controller: _CpwdController,
              onPwdTap: (){}),

          SizedBox(height: size.height * 0.03),
          Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: AppButton(
                  width: 170,
                  borderRadius: 30,
                  name: 'Sign Up', onTapped: (){

              })
          ),

          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()))
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Already Have an Account? ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)
                    ),
                  ),
                  Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
