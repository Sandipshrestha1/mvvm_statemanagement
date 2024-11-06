// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';
import 'package:mvvm_statemanagement/models/movies_genre.dart';
import 'package:mvvm_statemanagement/repository/movies_repo.dart';
import 'package:mvvm_statemanagement/service/init_getit.dart';
import 'package:mvvm_statemanagement/service/navigation_service.dart';
import 'package:mvvm_statemanagement/widgets/movies/movies_widget.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Popular Movies",
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Todo : Navigate to the favorite Screen

              getIt<NavigationService>().showSnackbar();
              //  getIt<NavigationService>().showDialog(FavoritesScreen());
              //    getIt<NavigationService>().navigate(FavoritesScreen());
            },
            icon: const Icon(
              MyAppIcons.favoriteRounded,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () async {
              final List<MoviesGenre> genres =
                  //await getIt<ApiService>().fetchMovies();
                  // await getIt<ApiService>().fetchGenres();
                  //await MoviesRepository(getIt<ApiService>()).fetchGenres();
                  await getIt<MoviesRepository>().fetchGenres();
              log("Genres are $genres");
            },
            icon: const Icon(
              MyAppIcons.darkmode,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MoviesWidget(),
            // CachedImageWidget(
            //imgUrl: MyAppConstants.movieImage,
            //  ),
          );
        },
      ),
    );
  }
}
