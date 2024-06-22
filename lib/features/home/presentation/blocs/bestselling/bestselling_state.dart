import 'package:equatable/equatable.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';

abstract class BestSellingState extends Equatable {
  const BestSellingState();

  @override
  List<Object> get props => [];
}

class BestSellingInitial extends BestSellingState {}

class BestSellingLoading extends BestSellingState {}

class BestSellingLoaded extends BestSellingState {
  final List<Item> items;

  const BestSellingLoaded({required this.items});

  @override
  List<Object> get props => [items];
}

class BestSellingError extends BestSellingState {
  final String message;

  const BestSellingError({required this.message});

  @override
  List<Object> get props => [message];
}
