import '../../../../core/failures/failure.dart';
import '../../../../core/typedefs.dart';
import '../entities/payment_method.dart';

abstract interface class PaymentsRepository {
  FutureEither<Failure, List<PaymentMethod>> getPaymentMethods();
  FutureEither<Failure, CreditCardMethod> addCreditCard({
    required String number,
    required String cvc,
    required String expiryDate,
  });
}
