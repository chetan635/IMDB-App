

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movierating/pages/moviedata.dart';
import 'package:movierating/pages/movieinfo.dart';
import 'package:movierating/pages/multimoviedata.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  bool isSearching= false;

  void qwate(String a) async{
    MovieData instance=MovieData(a);
    await instance.getdata();
    Navigator.pushNamed((context), '/movieinfo',arguments: {
      'Poster':instance.Poster,
      'Title':instance.Title,
      'Year':instance.Year,
      'Genre':instance.Genre,
      'Director':instance.Director,
      'Writer':instance.Writer,
      'Actors':instance.Actors,
      'Plot':instance.Plot,





    }


    );

  }
  void qwate2(String a) async{
    MultiMovieData instance=MultiMovieData(a);
    await instance.getdata2();
    Navigator.pushNamed((context), '/multimovieinfo',arguments: {
      'data':instance.Search

    }


    );

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        title: !isSearching ?
        Text("IMDB Rating "):
        TextField(
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,



          ),
          onSubmitted: (value){
              if(value.length<=3){
                qwate(value);
              }
              else{
                qwate2(value );
              }
              },
          decoration: InputDecoration(
            hintText: " IMDb Search  ",
            icon: Icon(Icons.search),
              hintStyle: TextStyle(
              color: Colors.black,
                fontSize: 20.0
          )
          ),
        ),
        actions: [
          !isSearching ?
          IconButton(
            onPressed: (){
              setState(() {
                this.isSearching=!this.isSearching;
              });
            },
            icon: Icon(Icons.search),
            color: Colors.white,

          )
              :
          IconButton(
            onPressed: (){
              setState(() {
                this.isSearching=!this.isSearching;
              });
            },
            icon: Icon(Icons.cancel),
            color: Colors.white,



          )],

      ),
      body: Container(
        child: ListView(
          children: [
            Image(
              image:AssetImage('lib/assects/imdb2.jpg') ,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Divider(
                  height: 70.0,
                  color: Colors.white,
                ),
                ExpansionTile(

                  title: Text('Features  :  ',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                  leading: Icon(Icons.add_comment,
                  color: Colors.white,
                  ),
                  children: [
                    Text("IMDb, in full Internet Movie Database, Web site that provides information about millions of films and television programs as well as their cast and crew. The name is an acronym for Internet Movie Database. As a wholly owned subsidiary of Amazon.com, IMDb is based in Seattle, but the office of Col Needham, the founder and CEO, remains in Bristol, England, where the Web site was founded.",
                      style: TextStyle(
                          color: Colors.amber[400],
                        fontSize: 18.0
                      ),)
                  ],
                ),
                Divider(
                  height: 70.0,
                  color: Colors.white,
                ),
                ExpansionTile(
                  title: Text('History : ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),),
                  leading: Icon(Icons.add_comment,
                  color: Colors.white,),
                  children: [
                    Text('The stated founding date of IMDb is October 17, 1990, when Needham posted his movie-listing software to a USENET film discussion group. The site was cooperatively expanded and became an early migrant to the World Wide Web. IMDb.com was incorporated in January 1996 and was purchased by Amazon.com two years later.',
                      style: TextStyle(
                          color: Colors.amber[400],
                        fontSize: 18.0
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 70.0,
                  color: Colors.white,
                ),
                ExpansionTile(
                  title: Text('Ranking ',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  leading: Icon(Icons.add_comment,
                  color: Colors.white,
                  ),
                  children: [
                    Text('IMDB uses this famous formula: weighted rank (WR) = (v ÷ (v+m)) × R + (m ÷ (v+m)) × C where: R = average for the movie (mean) = (Rating) v = number of votes for the movie = (votes) m = minimum votes required to be listed in the Top 250 (currently 1250) C = the mean vote across the whole report (currently 6.8) ',
                      style: TextStyle(
                          color: Colors.amber[400],
                        fontSize: 18.0
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 70.0,
                  color: Colors.white,
                ),
                ExpansionTile(
                  title: Text('Created By',style: TextStyle(color: Colors.white,
                  fontSize: 25.0,
                    fontWeight: FontWeight.bold,

                  )),
                  leading: Icon(Icons.add_comment,
                  color: Colors.white,),
                  children: [
                    Text('Chetan Chinchulkar',
                    style: TextStyle(
                      color: Colors.amber[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0
                    ),
                    ),

                  ],
                )

              ],
            )
          ],
        ),

        
      )


    );

  }
}
