import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gos_uslugi/screens/app_theme/blocs/theme_changer/theme_changer_cubit.dart';
import 'package:gos_uslugi/screens/home/blocs/home_bloc/home_cubit.dart';
import 'package:gos_uslugi/screens/payments/blocs/payment_history/payment_history_cubit.dart';
import 'package:gos_uslugi/screens/payments/blocs/pending_payment/pending_payment_cubit.dart';

class AppBlocProviders {
  static List<BlocProvider> providers = [
    BlocProvider<HomeCubit>(create: (context) => HomeCubit()..onLoadData()),
    BlocProvider<PaymentHistoryCubit>(
        create: (context) => PaymentHistoryCubit()..onRefreshPaymentHistory()),
    BlocProvider<PendingPaymentCubit>(
        create: (context) => PendingPaymentCubit()..onRefreshPendingPayment()),
    BlocProvider<AppThemeCubit>(create: (context) => AppThemeCubit()),
  ];
}
