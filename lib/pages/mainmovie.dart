import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'dart:io';



class MainMovie extends StatefulWidget {
  @override
  _MainMovieState createState() => _MainMovieState();
}

class _MainMovieState extends State<MainMovie> {

  Map data1={};


  @override
  Widget build(BuildContext context) {
    data1=ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("The Total information Regarding the movie"),

        ),


    );
  }
}



