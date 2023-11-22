import 'package:equatable/equatable.dart';

sealed class PaymentMethod extends Equatable {
  const PaymentMethod({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}

class CreditCardMethod extends PaymentMethod {
  const CreditCardMethod({
    required super.id,
    required this.maskedNumber,
    required this.expiryDate,
  });

  final String maskedNumber;
  final String expiryDate;

  @override
  List<Object?> get props => [...super.props, maskedNumber, expiryDate];
}
