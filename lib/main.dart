





import 'package:flutter/material.dart';
import 'package:movierating/pages/home.dart';
import 'package:movierating/pages/loading.dart';
import 'package:movierating/pages/movieinfo.dart';
import 'package:movierating/pages/mainmovie.dart';
import 'package:movierating/pages/multimovieinfo.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {

    '/home':(context)=>Home(),
    '/movieinfo':(context)=>MovieInfo(),
    '/multimovieinfo':(context)=>Multi()

  },
));

