import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_home_screen_for_slashapp/core/error/failuremessage.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/use_cases/get_items.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/bestselling/bestselling_state.dart';

class BestSellingCubit extends Cubit<BestSellingState> {
  final GetBestSelling getBestSelling;

  BestSellingCubit({required this.getBestSelling})
      : super(BestSellingInitial());

  void fetchBestSelling() async {
    emit(BestSellingLoading());
    final failureOrItems = await getBestSelling();
    emit(failureOrItems.fold(
      (failure) => BestSellingError(message: mapFailureToMessage(failure)),
      (items) => BestSellingLoaded(items: items),
    ));
  }
}
