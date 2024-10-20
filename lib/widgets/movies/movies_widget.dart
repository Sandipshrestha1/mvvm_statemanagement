import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_constants.dart';
import 'package:mvvm_statemanagement/widgets/cached_image.dart';

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
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
