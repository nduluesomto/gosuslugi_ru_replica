part of 'payment_history_cubit.dart';

@immutable
sealed class PaymentHistoryState {}

final class PaymentHistoryInitial extends PaymentHistoryState {}

final class PaymentHistoryLoading extends PaymentHistoryState {}

final class PaymentHistoryLoaded extends PaymentHistoryState {}

final class PaymentHistoryError extends PaymentHistoryState {
  final String errorMessage;

  PaymentHistoryError({required this.errorMessage});

}
