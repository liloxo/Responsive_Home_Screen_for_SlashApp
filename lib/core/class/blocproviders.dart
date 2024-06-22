import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/bestselling/bestselling_cubit.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/newarrival/newarrival_cubit.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/recommendedforyou/recommendedforyou_cubit.dart';

List<BlocProvider> providers = [
  BlocProvider<BestSellingCubit>(
    create: (_) => GetIt.instance<BestSellingCubit>()..fetchBestSelling(),
  ),
  BlocProvider<NewArrivalCubit>(
    create: (_) => GetIt.instance<NewArrivalCubit>()..fetchNewArrivals(),
  ),
  BlocProvider<RecommendedForYouCubit>(
    create: (_) =>
        GetIt.instance<RecommendedForYouCubit>()..fetchRecommendedForYou(),
  ),
];
