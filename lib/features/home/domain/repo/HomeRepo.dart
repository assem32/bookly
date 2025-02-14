import 'package:flutter_application_1/core/utils/erros.dart';
import 'package:flutter_application_1/features/home/data/model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future <Either <Failure,BookModel>> fetchBestSeller();
  Future <Either <Failure,BookModel>> fetchFeaturedBook();
}