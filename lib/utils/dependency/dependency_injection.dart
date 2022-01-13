import 'package:js_crm/features/splash/presentation/manager/splash_page_view_model.dart';

import '../../app/globals.dart';
import '../../services/repository/repository.dart';
import '../../services/repository/repository_imp.dart';
import '../network/network_info.dart';
import '../router/app_state.dart';

Future<void> init() async {
  /// View Models
  sl.registerLazySingleton(() => SplashPageViewModel());

  /// Repository
  sl.registerLazySingleton<Repository>(() => RepositoryImp(networkInfo: sl()));

  /// Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// Navigator
  sl.registerLazySingleton(() => AppState());
}
