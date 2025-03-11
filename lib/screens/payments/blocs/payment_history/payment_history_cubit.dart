import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'payment_history_state.dart';

class PaymentHistoryCubit extends Cubit<PaymentHistoryState> {
  PaymentHistoryCubit() : super(PaymentHistoryInitial());

  Future<void> onRefreshPaymentHistory() async {
    emit(PaymentHistoryLoading());

    await Future.delayed(const Duration(seconds: 3));
    emit(PaymentHistoryLoaded());
  }
}
