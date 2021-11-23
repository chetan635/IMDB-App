import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class MovieInfo extends StatefulWidget {
  @override
  _MovieInfoState createState() => _MovieInfoState();
}

class _MovieInfoState extends State<MovieInfo> {

  Map data={};
  String Title;
  String Poster;
  String Year;
  String Genre;
  String Director;
  String Actors;
  String Writer;
  String Plot;



  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: Text("IMDb Ratings"),

      ),
      body: Container(
        width: 500,
        height: 700,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('${data['Poster']}'),
            fit: BoxFit.cover,
          ),
        ),


        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY:3.0),
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: NetworkImage('${data['Poster']}'),
                      width: 400.0,
                      height: 500.0,

                    ),
                    Divider(
                      height: 70.0,
                      color: Colors.white,
                    ),

                    SizedBox(height: 30.0,),
                    Text('Released On : ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent,

                      ),

                    ),
                    Text(

                      '  ${data['Year']}',
                      style: TextStyle(
                        fontSize: 22.0,
                        letterSpacing: 2.0,
                        color: Colors.white,


                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text('Catogery : ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent,

                      ),

                    ),
                    Text(

                      '  ${data['Genre']}',
                      style: TextStyle(
                        fontSize: 22.0,
                        letterSpacing: 2.0,
                        color: Colors.white,


                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text('Director : ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent,

                      ),

                    ),
                    Text(

                      '  ${data['Director']}',
                      style: TextStyle(
                        fontSize: 22.0,
                        letterSpacing: 2.0,
                        color: Colors.white,


                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text('Writer : ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent,

                      ),

                    ),
                    Text(

                      '  ${data['Writer']}',
                      style: TextStyle(
                        fontSize: 22.0,
                        letterSpacing: 2.0,
                        color: Colors.white,


                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text('Actors: ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent,

                      ),

                    ),
                    Text(

                      '  ${data['Actors']}',
                      style: TextStyle(
                        fontSize: 22.0,
                        letterSpacing: 2.0,
                        color: Colors.white,


                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text('Plot :',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent,

                      ),

                    ),
                    Text(

                      '  ${data['Plot']}',
                      style: TextStyle(
                        fontSize: 22.0,
                        letterSpacing: 2.0,
                        color: Colors.white,


                      ),
                    ),
                    SizedBox(height: 30.0,),


                  ],

                ),
              ],
            ),
          ),
          ),
        ),





      );





  }
}

