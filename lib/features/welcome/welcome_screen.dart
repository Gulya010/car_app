import 'package:car_app/features/welcome/sing_in.dart';
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
              Image.asset(height: 30, width: 100, 'welcome_logo.png'),
              const SizedBox(
                height: 270,
              ),
              const Text(
                'Rent your dream car from the\nBest Company',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Hind', color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SingIn()));
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
              const SizedBox(
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
