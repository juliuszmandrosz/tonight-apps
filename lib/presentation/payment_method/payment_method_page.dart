import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver_common/raver_common.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
      appBar: const RaverAppBar(title: 'Metoda płatności'),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: const Text('Google pay'),
              value: 'wallet',
              groupValue: 'blik',
              onChanged: (value) => {},
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: const Text('BLIK'),
              value: 'blik',
              groupValue: 'blik',
              onChanged: (value) => {},
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: const Text('Karta'),
              value: 'card',
              groupValue: 'blik',
              onChanged: (value) => {},
            ),
          ],
        ),
      ),
    );
  }
}
