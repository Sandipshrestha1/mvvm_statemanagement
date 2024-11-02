// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:mvvm_statemanagement/constants/theme_data.dart';
// import 'package:mvvm_statemanagement/screens/movies_screen.dart';
// import 'package:mvvm_statemanagement/service/init_getit.dart';
// import 'package:mvvm_statemanagement/service/navigation_service.dart';

// void main() async {

//   setupLocator();
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]).then(_) async {
//   await dotenv.load(fileName: "assets/.env");
//   runApp(MyApp());

// });
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   final navigationKey = NavigationService().navigatorKey;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       navigatorKey: getIt<NavigationService>().navigatorKey,
//       debugShowCheckedModeBanner: false,
//       title: "Flutter Demo",
//       theme: MyThemeData.darkTheme,
//       home: //SplashScreen(),
//           //MovieDetailsScreen()
//           //FavoritesScreen(),
//           const MoviesScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mvvm_statemanagement/constants/theme_data.dart';
import 'package:mvvm_statemanagement/screens/movies_screen.dart';
import 'package:mvvm_statemanagement/service/init_getit.dart';
import 'package:mvvm_statemanagement/service/navigation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  await dotenv.load(fileName: "assets/.env");
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.landscapeLeft,
    //DeviceOrientation.landscapeRight,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: MyThemeData.darkTheme,
      home: const MoviesScreen(),
    );
  }
}
