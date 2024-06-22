import 'package:dartz/dartz.dart';
import 'package:responsive_home_screen_for_slashapp/core/error/failures.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/data/data_sources/items/item_local_data_source.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';
import '../../domain/repositories/item_repository.dart';

class ItemRepositoryImpl implements ItemRepository {
  final ItemLocalDataSource localDataSource;

  ItemRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<Item>>> getBestSelling() async {
    try {
      final localItems = await localDataSource.getBestSellingItems();
      return Right(localItems);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Item>>> getNewArrivals() async {
    try {
      final localItems = await localDataSource.getNewArrivalItems();
      return Right(localItems);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Item>>> getRecommendedForYou() async {
    try {
      final localItems = await localDataSource.getRecommendedItems();
      return Right(localItems);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
