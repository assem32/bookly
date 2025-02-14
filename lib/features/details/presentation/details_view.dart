import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/utils/styles.dart';
import 'package:flutter_application_1/features/details/presentation/detail_widgets/button_action.dart';
import 'package:flutter_application_1/features/details/presentation/detail_widgets/deatails_bar.dart';
import 'package:flutter_application_1/features/home/presenation/view/widgets/custum_item.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getWidth(30, context)),
          child: Column(
            children: [
              DetailsBar(),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: getHeight(106-30, context)),
                child: CustumItem(height: getHeight(262, context),width: getWidth(192, context),imgUrl: 'https://img.freepik.com/free-photo/close-up-handsome-young-man-laughing-wearing-casual-clothes-standing-blue-background_1258-73371.jpg?w=1060&t=st=1699786676~exp=1699787276~hmac=8d2ddc63e2597ecb00c290853ad65035d60cd9a25f9fff62573ca5a93b778f28'),
              ),
              SizedBox(height: getHeight(37, context),),
              Text('The jungle book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
              Text('The jungle book',style: Styles.textStyle18.copyWith(color: greyColor),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: yellowColor,),
                  Text('   4.8  ',style: Styles.textStyle16,),
                  Text('2055',style: Styles.textStyle14.copyWith(color: greyColor),),
                ],
              ),
              ButtonAction(),
            ],
          ),
        ),
      ),
    );
  }
}
