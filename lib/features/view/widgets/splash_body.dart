import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:flutter_application_1/features/home/presenation/view/home_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {

  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin// controll the value for animation 
 {
  late AnimationController animationController;  //give value from 0 to 1
  late Animation <Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initMethode();//when any thing change rebuild
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.toNamed('/home');
    });
  }

  void initMethode() {
    animationController =AnimationController(vsync:  this,duration: const Duration(seconds: 1));//in a minute it will give me values from 0 to 1
    slidingAnimation = Tween<Offset>(begin: Offset(0, 10) ,end: Offset.zero).animate(animationController);//where to start and end 
    
    animationController.forward();
    slidingAnimation.addListener(() {setState(() {
      
    });});//when any thing change rebuild
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();//after any controller we need dispse to make better performance
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsManger.logo),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder:(context,_)  {return SlideTransition(
        position: slidingAnimation,
        child: const Text('read free books',textAlign: TextAlign.center,));},
    );
  }
}