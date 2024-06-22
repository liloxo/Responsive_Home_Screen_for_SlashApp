import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_home_screen_for_slashapp/core/error/failuremessage.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/use_cases/get_items.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/newarrival/newarrival_state.dart';

class NewArrivalCubit extends Cubit<NewArrivalState> {
  final GetNewArrivals getNewArrivals;

  NewArrivalCubit({required this.getNewArrivals}) : super(NewArrivalInitial());

  void fetchNewArrivals() async {
    emit(NewArrivalLoading());
    final failureOrItems = await getNewArrivals();
    emit(failureOrItems.fold(
      (failure) => NewArrivalError(message: mapFailureToMessage(failure)),
      (items) => NewArrivalLoaded(items: items),
    ));
  }
}
