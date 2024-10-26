import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/features/home/presenation/view/widgets/home_widget/bestsellerItem.dart';
import 'package:flutter_application_1/features/manger/new_books_cubit/new_books_cubit.dart';
import 'package:flutter_application_1/features/manger/new_books_cubit/news_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBooksCubit,NewBookStates>(
      builder: (context, state) {
        if (state is NewBookSuccess)
        {return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // itemBuilder: (context, index) => Text('data'),
        itemBuilder: (context, index) => BestSellerListViewItem(bookModel:state.bookList.items![index] ),
        separatorBuilder:(context, index) => SizedBox(
          height: getHeight(20, context),
        ),
        itemCount: 10,
      );}
      else if(state is NewBookError){
        return Text(state.error);
      }
      else{
        return CircularProgressIndicator();
      }
      },
    );
  }
}