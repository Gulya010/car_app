import 'package:car_app/core/extensions/services/shared_prefs.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/sing_btn.dart';
import 'package:car_app/features/auth/screens/sing_in.dart';
import 'package:car_app/features/auth/auth_text_field.dart';
import 'package:car_app/features/auth/auth_btn.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingInState();
}

class _SingInState extends State<SingUp> {
  final _nameController = TextEditingController();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  final _prefs = SharedPrefs();

  @override
  void dispose() {
    _nameController.dispose();
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: AppTextstyles.medium.setSize(48),
                ),
                const SizedBox(
                  height: 40,
                ),
                const AuthTextField(
                    title: 'FULL NAME', hintText: 'Lorem Ipsum'),
                const SizedBox(
                  height: 15,
                ),
                const AuthTextField(
                    title: 'EMAIL OR PHONE', hintText: 'Loremipsum@gmail.com'),
                const SizedBox(
                  height: 15,
                ),
                const AuthTextField(title: 'PASSWORD', hintText: '***********'),
                const SizedBox(
                  height: 65,
                ),
                SingBtn(
                  text: 'Login',
                  onTap: () {
                    _prefs.save(
                        key: StorageKey.login, value: _loginController.text);
                    _prefs.save(
                        key: StorageKey.password,
                        value: _passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SingIn(),
                      ),
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                ),
                AuthBtn(
                  btnText: 'Continue With Google',
                  onTap: () {},
                  image: AppAssets.chrome,
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthBtn(
                  btnText: 'Continue With Facebook',
                  onTap: () {},
                  image: AppAssets.facebook,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Have an account Already?',
                      style: TextStyle(fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
