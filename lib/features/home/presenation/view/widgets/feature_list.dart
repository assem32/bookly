import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/features/details/presentation/details_view.dart';
import 'package:flutter_application_1/features/home/presenation/view/widgets/custum_item.dart';
import 'package:flutter_application_1/features/home/presenation/manger/feature_book_cubit/feature_book_cubit.dart';
import 'package:flutter_application_1/features/home/presenation/manger/feature_book_cubit/feature_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit,FeatureBookStates>(
      builder: (context, state) {
        if(state is FeatureBookSuccess)
       { return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsView()));
        },
        child: Container(
          height: getHeight(224, context),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>CustumItem(height: getHeight(260, context),width: 0,imgUrl: state.bookList.items![index].volumeInfo?.imageLinks?.thumbnail ??'https://img.freepik.com/free-photo/close-up-handsome-young-man-laughing-wearing-casual-clothes-standing-blue-background_1258-73371.jpg?w=1060&t=st=1699786676~exp=1699787276~hmac=8d2ddc63e2597ecb00c290853ad65035d60cd9a25f9fff62573ca5a93b778f28',),
            separatorBuilder:(context,index)=> SizedBox(width: 10), itemCount: state.bookList.items!.length)),
      );}
      else if (state is FeatureBookError){
        return Text(state.error);
      }
      else{
        return Center(child: CircularProgressIndicator());
      }
    
      },
    );
  }
  
}
