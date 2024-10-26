import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utils/api_services.dart';
import 'package:flutter_application_1/core/utils/erros.dart';
import 'package:flutter_application_1/features/data/model/BookModel.dart';
import 'package:flutter_application_1/features/data/repo/HomeRepo.dart';

class HomeRepoImpelment implements HomeRepo{

  late final ApiService apiService ;

  HomeRepoImpelment(this.apiService);

  @override
  Future<Either<Failure, BookModel>> fetchBestSeller() async{
    try{
      var data= await apiService.get(endPoint: 'volumes?q=computer science');
      return right(BookModel.fromJson(data));
    }
    catch(e){
      if (e is DioException)
        return left(ServerFailure.fromDioError(e));
        
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BookModel>> fetchFeaturedBook() async{
     try{
      var data= await apiService.get(endPoint: 'volumes?q=computer science');
      return right(BookModel.fromJson(data));
    }
    catch(e){
      if (e is DioException)
        return left(ServerFailure.fromDioError(e));
      return left(ServerFailure(e.toString()));
    }
  
  }
 

}