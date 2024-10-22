import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/my_app_icons.dart';

class FavoriteBtnWidget extends StatelessWidget {
  const FavoriteBtnWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
// Todo: implement add to favorites.
        },
        icon: const Icon(
          MyAppIcons.favorite_Outline_Rounded,
          // color: Colors.red,
          size: 20,
        ));
  }
}
