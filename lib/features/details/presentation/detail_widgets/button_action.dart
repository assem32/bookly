import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widgets/button.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButton(backgroundColor: Colors.white, textColor:Colors.black, text:'19.99€',borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),onPressed: () {
          
        },),
        ),
        Expanded(child: CustomButton(backgroundColor: orangeColor, textColor:Colors.black, text:'Free',borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),onPressed: () {
          
        },)
        ),
        
      ],
    );
  }
}