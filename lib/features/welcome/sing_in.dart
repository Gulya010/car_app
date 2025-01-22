import 'package:car_app/features/welcome/app_button.dart';
import 'package:flutter/material.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ),
              TextFormField(),
              TextFormField(),
              AppButton(
                text: 'Log In',
                onTap: () {},
              ),
              const Text(
                'OR',
                style: TextStyle(fontSize: 32),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 25),
                    backgroundColor: const Color.fromARGB(255, 9, 5, 90),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text('Continue With Google')),
              TextButton(
                  onPressed: () {},
                  child: const Text('Continue With Facebook')),
            ],
          ),
        ),
      ),
    );
  }
}
