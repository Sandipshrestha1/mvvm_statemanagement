import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/theme_data.dart';
import 'package:mvvm_statemanagement/screens/movie_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        theme: MyThemeData.darkTheme,
        home: MovieDetailsScreen()
        //FavoritesScreen(),
        // const MoviesScreen(),
        );
  }
}
