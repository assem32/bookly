import 'package:flutter_application_1/features/home/data/model/BookModel.dart';

abstract class FeatureBookStates{}

class FeatureBookInit extends FeatureBookStates{}

class FeatureBookSuccess extends FeatureBookStates{
  final BookModel bookList;
  FeatureBookSuccess(this.bookList);
}

class FeatureBookError extends FeatureBookStates{
  final String error;
  FeatureBookError(this.error);

}

class FeatureBookLoading extends FeatureBookStates{}