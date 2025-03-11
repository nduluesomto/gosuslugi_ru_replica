import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gos_uslugi/screens/payments/widgets/pending_payment_widget.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/shimmer_loading_widget.dart';

import 'blocs/pending_payment/pending_payment_cubit.dart';

class PendingPayment extends StatelessWidget {
  const PendingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: BlocBuilder<PendingPaymentCubit, PendingPaymentState>(
          builder: (context, state) {
        if (state is PendingPaymentLoading) {
          return const ShimmerLoadingWidget();
        }
        if (state is PendingPaymentLoaded) {
          return SizedBox(
            height: AppHelperMethods.screenHeight(context) * 0.90,
            width: AppHelperMethods.screenWidth(context),
            child: const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: PendingPaymentWidget()),
          );
        }
        if (state is PendingPaymentError) {
          return const Center(
            child: Text('Error'),
          );
        }
        return const SizedBox();
      }),
      onRefresh: () =>
          context.read<PendingPaymentCubit>().onRefreshPendingPayment(),
    );
  }
}
