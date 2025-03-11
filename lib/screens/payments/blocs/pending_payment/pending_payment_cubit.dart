import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


part 'pending_payment_state.dart';

class PendingPaymentCubit extends Cubit<PendingPaymentState> {
  PendingPaymentCubit() : super(PendingPaymentInitial());

  Future<void> onRefreshPendingPayment() async {
    emit(PendingPaymentLoading());
    await Future.delayed(const Duration(seconds: 3));
    emit(PendingPaymentLoaded());
  }
}
