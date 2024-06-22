import 'package:equatable/equatable.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';

abstract class NewArrivalState extends Equatable {
  const NewArrivalState();

  @override
  List<Object> get props => [];
}

class NewArrivalInitial extends NewArrivalState {}

class NewArrivalLoading extends NewArrivalState {}

class NewArrivalLoaded extends NewArrivalState {
  final List<Item> items;

  const NewArrivalLoaded({required this.items});

  @override
  List<Object> get props => [items];
}

class NewArrivalError extends NewArrivalState {
  final String message;

  const NewArrivalError({required this.message});

  @override
  List<Object> get props => [message];
}
