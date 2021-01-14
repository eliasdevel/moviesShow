import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviesShow/service/movies.dart';

class MoviesList extends StatefulWidget {
  MoviesList();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MoviesList> {
  bool inited = false;
  bool isAdmin = false;
  List movies = [];

  @override
  void initState() {
    super.initState();
    loader();
  }

  loader() async {
    movies = await Movies.get();
    setState(() {
      inited = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!inited) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
        body: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: movies
          .map<Widget>((e) => GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/movieDetails', arguments: e);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                    children: [Image.network(e['image']), Text(e['name'])]),
                color: Color(0xff50ab5e),
              )))
          .toList(),
    ));
  }
}
