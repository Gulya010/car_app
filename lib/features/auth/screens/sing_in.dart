import 'package:car_app/core/extensions/context_ext.dart';
import 'package:car_app/core/extensions/int_ext.dart';
import 'package:car_app/core/extensions/list_ext.dart';
import 'package:car_app/core/services/shared_prefs.dart';
import 'package:car_app/core/extensions/textstyle_ext.dart';
import 'package:car_app/core/mixins/app_notice.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/screens/sing_up.dart';
import 'package:car_app/features/auth/sing_btn.dart';
import 'package:car_app/features/auth/auth_text_field.dart';
import 'package:car_app/features/auth/auth_btn.dart';
import 'package:car_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> with AppNotice {
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
            padding: [100, 40].symmetricPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: AppTextstyles.medium.setSize(48),
                ),
                40.verticalSpace,
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
                15.verticalSpace,
                const Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 14),
                ),
                65.verticalSpace,
                InkWell(
                  onTap: () async {
                    final login = await _prefs.read(key: StorageKey.login);
                    final password =
                        await _prefs.read(key: StorageKey.password);
                    if (login == _loginController.text &&
                        password == _passwordController.text) {
                      showSuccess('Успешный вход');
                      context.push(const HomeScreen());
                    } else {
                      showError('Ошибка при авторизации');
                    }
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
                      'Don’t Have an account yet?',
                      style: TextStyle(fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        context.push(const SingUp());
                      },
                      child: const Text(
                        'SIGN UP',
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
