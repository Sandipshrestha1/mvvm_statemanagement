import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_constants.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';
import 'package:mvvm_statemanagement/screens/movie_details.dart';
import 'package:mvvm_statemanagement/service/init_getit.dart';
import 'package:mvvm_statemanagement/service/navigation_service.dart';
import 'package:mvvm_statemanagement/widgets/cached_image.dart';
import 'package:mvvm_statemanagement/widgets/movies/favorite_btn.dart';
import 'package:mvvm_statemanagement/widgets/movies/genres_list_widget.dart';

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {
// navigate to the movie details page
            getIt<NavigationService>().navigate(
              const MovieDetailsScreen(),
            );
          },
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IntrinsicWidth(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: CachedImageWidget(
                        imgUrl: MyAppConstants.movieImage,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "Movie title",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Icon(
                                MyAppIcons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text("8/10"),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const GenresListWidget(),
                          // TODo: Add the genres widget
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                MyAppIcons.watch_later,
                                size: 20,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "Release Date",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Spacer(),
                              //ToDo : Add the favorite button
                              FavoriteBtnWidget(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
