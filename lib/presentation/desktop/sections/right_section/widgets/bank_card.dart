import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class BankCard extends StatelessWidget {
  const BankCard(
      {super.key,
      required this.cardBgColor,
      this.cardType = CardType.mastercard,
      this.cardNumber = "2407321896572599"});

  final Color cardBgColor;
  final CardType cardType;
  final String cardNumber;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 430 / 210,
      child: CreditCardWidget(
          cardType: cardType,
          enableFloatingCard: true,
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: "07/32",
          bankName: "Egy Bank",
          cardHolderName: "John Doe",
          cvvCode: "",
          showBackView: false,
          cardBgColor: cardBgColor,
          onCreditCardWidgetChange: (onCreditCardWidgetChange) {}),
    );
  }
}
