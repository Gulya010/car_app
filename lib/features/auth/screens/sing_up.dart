import 'package:car_app/core/extensions/context_ext.dart';
import 'package:car_app/core/extensions/int_ext.dart';
import 'package:car_app/core/services/shared_prefs.dart';
import 'package:car_app/core/extensions/textstyle_ext.dart';
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
            padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: AppTextstyles.medium.setSize(48),
                ),
                40.verticalSpace,
                const AuthTextField(
                  title: 'FULL NAME',
                  hintText: 'Lorem Ipsum',
                  controller: null,
                ),
                15.verticalSpace,
                const AuthTextField(
                  title: 'EMAIL OR PHONE',
                  hintText: 'Loremipsum@gmail.com',
                  controller: null,
                ),
                15.verticalSpace,
                const AuthTextField(
                  title: 'PASSWORD',
                  hintText: '***********',
                  controller: null,
                ),
                60.verticalSpace,
                InkWell(
                  onTap: () {
                    _prefs.save(
                        key: StorageKey.login, value: _loginController.text);
                    _prefs.save(
                        key: StorageKey.password,
                        value: _passwordController.text);
                    context.push(const SingIn());
                  },
                  child: const SingBtn(
                    text: 'Login',
                  ),
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
                InkWell(
                  onTap: () {},
                  child: const AuthBtn(
                    btnText: 'Continue With Google',
                    image: AppAssets.chrome,
                  ),
                ),
                20.verticalSpace,
                InkWell(
                  onTap: () {},
                  child: const AuthBtn(
                    btnText: 'Continue With Facebook',
                    image: AppAssets.facebook,
                  ),
                ),
                25.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Have an account Already?',
                      style: TextStyle(fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        context.push(const SingIn());
                      },
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
