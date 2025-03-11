import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gos_uslugi/screens/payments/blocs/payment_history/payment_history_cubit.dart';
import 'package:gos_uslugi/screens/payments/widgets/payment_history_widget.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/shimmer_loading_widget.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: BlocBuilder<PaymentHistoryCubit, PaymentHistoryState>(
          builder: (context, state) {
        if (state is PaymentHistoryLoading) {
          return const ShimmerLoadingWidget();
        }
        if (state is PaymentHistoryLoaded) {
          return SizedBox(
            height: AppHelperMethods.screenHeight(context) * 0.90,
            width: AppHelperMethods.screenWidth(context),
            child: const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: PaymentHistoryWidget()),
          );
        }
        if (state is PaymentHistoryError) {
          return const Center(
            child: Text('Error'),
          );
        }
        return const SizedBox();
      }),
      onRefresh: () =>
          context.read<PaymentHistoryCubit>().onRefreshPaymentHistory(),
    );
  }
}
