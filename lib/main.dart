import 'package:car_app/features/home/home_screen.dart';
import 'package:car_app/features/home/provider/cars_provider.dart';
import 'package:car_app/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CarsProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
        //WelcomeScreen(),
      ),
    );
  }
}
