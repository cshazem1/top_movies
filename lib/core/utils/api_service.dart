import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiService{
  final baseurl='https://imdb-top-100-movies1.p.rapidapi.com/';
Dio dio;
ApiService(this.dio);


Future<List<dynamic>> get({@required String? xKey ,@required String? xHost}) async {
  Map<String, String> headers = {};
  if(xKey!=null) {
    headers.addAll({"X-RapidAPI-Key":xKey});
  }
  if(xHost!=null){
    headers.addAll({"X-RapidAPI-Host":xHost});

  }
  var response= await dio.get(baseurl,options: Options(headers: headers),
  );
  return response.data;
}
}