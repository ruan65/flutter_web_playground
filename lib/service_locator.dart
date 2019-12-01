import 'package:flutter_web_playground/services/api.dart';
import 'package:flutter_web_playground/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
}
