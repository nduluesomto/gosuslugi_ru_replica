import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gos_uslugi/screens/home/widgets/home_loading_shimmer.dart';
import 'package:gos_uslugi/screens/home/widgets/home_widgets.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/appbar.dart';

import 'blocs/home_bloc/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: AppHelperMethods.isDarkMode(context)
                  ? AppColors.darkGradient
                  : AppColors.lightGradient),
          height: MediaQuery.of(context).size.height,
          padding:
          const EdgeInsets.symmetric(horizontal: AppSizes.paddingHorizontal),
          child: RefreshIndicator(
            onRefresh: () => context.read<HomeCubit>().onLoadData(),
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return const HomeLoadingShimmer();
                }
                if (state is HomeLoaded) {
                  return const HomeWidgets();
                }
                if (state is HomeLoadedError) {
                  return const Center(
                    child: Text('Error'),
                  );
                }

                return const SizedBox();
              },
            ),
          ),
        ),
      ),
    );
  }
}
