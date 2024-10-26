import 'package:flutter_application_1/features/data/repo/HomeRepo.dart';
import 'package:flutter_application_1/features/manger/new_books_cubit/news_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewBooksCubit extends Cubit<NewBookStates>{
  NewBooksCubit(this.homeRepo):super(NewBookInit());

  final HomeRepo homeRepo;

  Future<void> fetchBestSeller()async{
    emit(NewBookLoading());
    var result = await homeRepo.fetchBestSeller();
    result.fold((failure){
      emit(NewBookError(failure.errorMessage.toString()));
    } , (books) {
      emit(NewBookSuccess(books));
    });
  }

}