import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utils/api_services.dart';
import 'package:flutter_application_1/core/utils/erros.dart';
import 'package:flutter_application_1/features/home/data/dataSource/remote/remote.dart';
import 'package:flutter_application_1/features/home/data/model/BookModel.dart';
import 'package:flutter_application_1/features/home/domain/repo/HomeRepo.dart';

class HomeRepoImpelment implements HomeRepo{

  late final Remote remote ;

  HomeRepoImpelment(this.remote);

  @override
  Future<Either<Failure, BookModel>> fetchBestSeller() async{
    try{
      var data= await remote.getBooks();
      return right(data);
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
      var data= await remote.getFeatureBooks();
      return right(data);
    }
    catch(e){
      if (e is DioException)
        return left(ServerFailure.fromDioError(e));
      return left(ServerFailure(e.toString()));
    }
  
  }
 

}