import 'package:flutter_application_1/features/data/model/BookModel.dart';

abstract class NewBookStates{}

class NewBookInit extends NewBookStates{}

class NewBookSuccess extends NewBookStates{
  final BookModel bookList;
  NewBookSuccess(this.bookList);
}

class NewBookError extends NewBookStates{
  final String error;
  NewBookError(this.error);

}

class NewBookLoading extends NewBookStates{}