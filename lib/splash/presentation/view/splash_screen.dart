import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash/presentation/view/widgets/splash_body.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );

  }
} 