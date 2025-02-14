import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/utils/styles.dart';
import 'package:flutter_application_1/features/home/presenation/view/widgets/best_seller_listview.dart';
import 'package:flutter_application_1/features/home/presenation/view/widgets/custum_bar.dart';
import 'package:flutter_application_1/features/home/presenation/view/widgets/feature_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24, context)),
        child:const SingleChildScrollView(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureListView(),
              SizedBox(height: 10,),
              Text('Best seller',style: Styles.textStyle18,),
              SizedBox(height: 10,),
              BestSellerListview()
            ],
          ),
        ),
      ),
    );
  }
}

