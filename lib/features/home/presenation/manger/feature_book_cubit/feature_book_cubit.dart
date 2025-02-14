import 'package:flutter_application_1/features/home/domain/repo/HomeRepo.dart';
import 'package:flutter_application_1/features/home/presenation/manger/feature_book_cubit/feature_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksCubit extends Cubit<FeatureBookStates>{
  FeatureBooksCubit(this.homeRepo):super(FeatureBookInit());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBook()async{
    emit(FeatureBookLoading());
    var result = await homeRepo.fetchFeaturedBook();
    result.fold((failure){
      emit(FeatureBookError(failure.errorMessage.toString()));
    } , (books) {
      emit(FeatureBookSuccess(books));
    });
  }

}