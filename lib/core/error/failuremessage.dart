import 'package:responsive_home_screen_for_slashapp/core/error/failures.dart';

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure _:
      return 'Server Failure';
    default:
      return 'Unexpected Error';
  }
}
