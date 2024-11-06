import 'package:get_it/get_it.dart';
import 'package:mvvm_statemanagement/repository/movies_repo.dart';
import 'package:mvvm_statemanagement/service/api_service.dart';
import 'package:mvvm_statemanagement/service/navigation_service.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  getIt.registerLazySingleton<ApiService>(() => ApiService());
  getIt.registerLazySingleton<MoviesRepository>(
      () => MoviesRepository(getIt<ApiService>()));
}
