import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/constants/theme_data.dart';
import 'package:mvvm_statemanagement/screens/movies_screen.dart';
import 'package:mvvm_statemanagement/service/init_getit.dart';
import 'package:mvvm_statemanagement/service/navigation_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final navigationKey = NavigationService().navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: getIt<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: MyThemeData.darkTheme,
      home: //SplashScreen(),
          //MovieDetailsScreen()
          //FavoritesScreen(),
          const MoviesScreen(),
    );
  }
}
