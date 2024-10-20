import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';
import 'package:mvvm_statemanagement/widgets/movies/movies_widget.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Popular Movies",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              MyAppIcons.favoriteRounded,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
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
