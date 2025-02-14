import 'package:flutter_application_1/core/utils/api_services.dart';
import 'package:flutter_application_1/features/home/data/model/BookModel.dart';

class Remote {
  ApiService apiService;
  Remote(this.apiService);
  Future <BookModel> getBooks()async{
    var respone = await apiService.get(endPoint: "volumes?q=computer science");
    BookModel list = BookModel.fromJson(respone);
    return list;
  }

  Future <BookModel>getFeatureBooks()async{
    var respone = await apiService.get(endPoint: 'volumes?q=computer science');
    BookModel model = BookModel.fromJson(respone);
    return model;
  }


}
