import 'package:flutter/material.dart';
import 'package:movierating/pages/moviedata2.dart';
import 'package:photo_view/photo_view.dart';
import 'package:movierating/pages/moviedata.dart';

class Multi extends StatefulWidget {
  @override
  _MultiState createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  Map data;
  List data2;
  void qwate3(String a) async{
    MovieData3 instance=MovieData3(a);
    await instance.getdata3();
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
  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    print(data);
    data2=data["data"];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Choose The option ",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.amber

        ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        color: Colors.grey[800],
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image(
                                image: NetworkImage('${data2[index]["Poster"]}'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                              child: Text(
                                "${data2[index]["Title"]}",
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber
                                ),
                              ),
                            ),
                            Text(
                              "${data2[index]["Year"]}",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        qwate3(data2[index]["imdbID"]);
                      },
                    ),
                );

            },
          ),
      ),
    );
  }
}
