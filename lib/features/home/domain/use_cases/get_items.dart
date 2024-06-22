import 'package:dartz/dartz.dart';
import 'package:responsive_home_screen_for_slashapp/core/error/failures.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';
import '../repositories/item_repository.dart';

class GetBestSelling {
  final ItemRepository repository;

  GetBestSelling(this.repository);

  Future<Either<Failure, List<Item>>> call() async {
    return await repository.getBestSelling();
  }
}

class GetNewArrivals {
  final ItemRepository repository;

  GetNewArrivals(this.repository);

  Future<Either<Failure, List<Item>>> call() async {
    return await repository.getNewArrivals();
  }
}

class GetRecommendedForYou {
  final ItemRepository repository;

  GetRecommendedForYou(this.repository);

  Future<Either<Failure, List<Item>>> call() async {
    return await repository.getRecommendedForYou();
  }
}
