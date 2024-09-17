// presentation/screens/payment_success_screen.dart
import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Success')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 100),
            const SizedBox(height: 20),
            const Text('Payment Success',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('\$35.00', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            const Text('Adobe XD Editing Course'),
            const Text('Invoice Date: Nov 14, 2023'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
