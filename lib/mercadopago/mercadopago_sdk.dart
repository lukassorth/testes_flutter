import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mercado_pago_integration/mercado_pago_integration.dart';
import 'package:mercado_pago_integration/core/failures.dart';
import 'package:mercado_pago_integration/models/payment.dart';

final Map<String, Object> preference = {
  'items': [
    {
      'title': 'Test Product',
      'description': 'Description',
      'quantity': 3,
      'currency_id': 'BRL',
      'unit_price': 1500,
    }
  ],
  'payer': {'name': 'Buyer G.', 'email': 'test@gmail.com'},
};

class MercadoPagoCheckoutPage extends StatefulWidget {
  MercadoPagoCheckoutPage({Key? key}) : super(key: key);

  @override
  _MercadoPagoCheckoutPageState createState() =>
      _MercadoPagoCheckoutPageState();
}

class _MercadoPagoCheckoutPageState extends State<MercadoPagoCheckoutPage> {
  String _publicKey = 'TEST-346efd05-9f63-4b02-bfe3-c5fab7905a04';
  String _accessToken =
      'TEST-8325424925517058-061715-36bd4036c19404aaa9f8f7a60171e29a-170004233';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercado Pago Pagamentos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.red,
              onPressed: () async {
                (await MercadoPagoIntegration.startCheckout(
                  publicKey: _publicKey,
                  preference: preference,
                  accessToken: _accessToken,
                ))
                    .fold((Failure failure) {
                  debugPrint('Failure => ${failure.message}');
                }, (Payment payment) {
                  debugPrint('Payment => ${payment.paymentId}');
                });
              },
              child: Text('Testar Integração'),
            )
          ],
        ),
      ),
    );
  }
}
