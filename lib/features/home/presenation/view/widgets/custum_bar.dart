import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsManger.logo,height: 18,),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search),iconSize: 24,)
        ],
      ),
    );
  }
}