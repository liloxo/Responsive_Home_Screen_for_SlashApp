import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_home_screen_for_slashapp/core/error/failuremessage.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/use_cases/get_items.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/recommendedforyou/recommendedforyou_state.dart';

class RecommendedForYouCubit extends Cubit<RecommendedForYouState> {
  final GetRecommendedForYou getRecommendedForYou;

  RecommendedForYouCubit({required this.getRecommendedForYou})
      : super(RecommendedForYouInitial());

  void fetchRecommendedForYou() async {
    emit(RecommendedForYouLoading());
    final failureOrItems = await getRecommendedForYou();
    emit(failureOrItems.fold(
      (failure) =>
          RecommendedForYouError(message: mapFailureToMessage(failure)),
      (items) => RecommendedForYouLoaded(items: items),
    ));
  }
}
