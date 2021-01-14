import 'package:flutter/material.dart';
import 'package:moviesShow/moviesList.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.

      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MoviesList(),
		'/': (context) => MoviesList(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/shopping_cart': (context) => ShoppingCart(),

      },
      color: Colors.red,
    );
  }
}

