import 'package:car_app/core/extensions/context_ext.dart';
import 'package:car_app/core/extensions/int_ext.dart';
import 'package:car_app/core/extensions/list_ext.dart';
import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/features/auth/screens/sing_in.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0, 0),
        children: [
          Image.asset('welcome_bg.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(height: 50, width: 120, 'welcome_logo.png'),
              300.verticalSpace,
              Text(
                'Rent your dream car from the\nBest Company',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Hind',
                    color: AppColors.textColor81,
                    fontSize: 20),
              ),
              80.verticalSpace,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: [20, 66].symmetricPadding,
                  backgroundColor: Colors.red,
                  foregroundColor: AppColors.textColor,
                ),
                onPressed: () {
                  context.push(const SingIn());
                },
                child: const Text(
                  'Get Started >',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inconsolata',
                  ),
                ),
              ),
              60.verticalSpace,
            ],
          )
        ],
      ),
    );
  }
}
