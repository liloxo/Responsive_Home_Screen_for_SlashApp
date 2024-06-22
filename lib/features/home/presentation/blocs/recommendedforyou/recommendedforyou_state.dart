import 'package:equatable/equatable.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';

abstract class RecommendedForYouState extends Equatable {
  const RecommendedForYouState();

  @override
  List<Object> get props => [];
}

class RecommendedForYouInitial extends RecommendedForYouState {}

class RecommendedForYouLoading extends RecommendedForYouState {}

class RecommendedForYouLoaded extends RecommendedForYouState {
  final List<Item> items;

  const RecommendedForYouLoaded({required this.items});

  @override
  List<Object> get props => [items];
}

class RecommendedForYouError extends RecommendedForYouState {
  final String message;

  const RecommendedForYouError({required this.message});

  @override
  List<Object> get props => [message];
}
