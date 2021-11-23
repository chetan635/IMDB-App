import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class MovieData{
  String Title;
  String moviename;
  String Poster;
  String Year;
  String Genre;
  String Director;
  String Actors;
  String Writer;
  String Plot;



  
  MovieData(this.moviename);
  
  Future<void> getdata()async{
    Response response =await get('http://www.omdbapi.com/?apikey=691db476&t=$moviename');
    Map data=jsonDecode(response.body);
    print(data);
    Title=data['Title'];
    Poster=data['Poster'];
    Year=data['Year'];
    Genre=data['Genre'];
    Director=data['Director'];
    Writer= data['Writer'];
    Actors=data['Actors'];
    Plot =data['Plot'];






  }
  
}