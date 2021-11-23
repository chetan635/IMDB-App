import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:movierating/pages/multimovieinfo.dart';


class MultiMovieData{
  List Search;
  String moviename2;




  MultiMovieData(this.moviename2);

  Future<void> getdata2()async{
    Response response =await get('http://www.omdbapi.com/?apikey=691db476&s=$moviename2');
    Map data=jsonDecode(response.body);

    Search=data['Search'];






  }

}