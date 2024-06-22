import 'package:get_it/get_it.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/data/data_sources/items/item_local_data_source.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/data/repositories_impl/item_repository_impl.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/repositories/item_repository.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/use_cases/get_items.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/bestselling/bestselling_cubit.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/newarrival/newarrival_cubit.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/recommendedforyou/recommendedforyou_cubit.dart';

final sl = GetIt.instance;

void setupLocator() {
  // Data Sources
  sl.registerLazySingleton<ItemLocalDataSource>(
      () => ItemLocalDataSourceImpl());

  // Repositories
  sl.registerLazySingleton<ItemRepository>(
      () => ItemRepositoryImpl(localDataSource: sl()));

  // Use Cases
  sl.registerLazySingleton(() => GetBestSelling(sl()));
  sl.registerLazySingleton(() => GetNewArrivals(sl()));
  sl.registerLazySingleton(() => GetRecommendedForYou(sl()));

  // Cubits
  sl.registerFactory(() => BestSellingCubit(getBestSelling: sl()));
  sl.registerFactory(() => NewArrivalCubit(getNewArrivals: sl()));
  sl.registerFactory(() => RecommendedForYouCubit(getRecommendedForYou: sl()));
}
