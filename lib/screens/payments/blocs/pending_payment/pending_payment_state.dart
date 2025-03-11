part of 'pending_payment_cubit.dart';

@immutable
sealed class PendingPaymentState {}

final class PendingPaymentInitial extends PendingPaymentState {}

final class PendingPaymentLoading extends PendingPaymentState {}

final class PendingPaymentLoaded extends PendingPaymentState {}

final class PendingPaymentError extends PendingPaymentState {
  final String errorMessage;

  PendingPaymentError({required this.errorMessage});
}
