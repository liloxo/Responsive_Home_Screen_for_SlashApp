import 'package:dartz/dartz.dart';
import 'package:responsive_home_screen_for_slashapp/core/error/failures.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';

abstract class ItemRepository {
  Future<Either<Failure, List<Item>>> getBestSelling();
  Future<Either<Failure, List<Item>>> getNewArrivals();
  Future<Either<Failure, List<Item>>> getRecommendedForYou();
}
