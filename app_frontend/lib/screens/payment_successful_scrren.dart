import 'package:flutter/material.dart';
import 'package:sports_venue_booking/theme/app_colors.dart';

class PaymentSuccessfulScrren extends StatelessWidget {
  const PaymentSuccessfulScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Confirmation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 100),
            SizedBox(height: 20),
            Text(
              "Payment Successful!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Thank you for payment. Your transaction has been processed successfully",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
              ),
              onPressed: () {
                Navigator.pop(context); // Go back to previous screen
              },
              child: Text("Return Home",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.onSecondary,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}