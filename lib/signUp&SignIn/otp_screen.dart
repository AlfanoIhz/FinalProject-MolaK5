import 'package:flutter/material.dart';
import 'signin_screen.dart'; // Pastikan ini mengarah ke file Sign In

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter OTP'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Enter the OTP sent to your phone:',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 20),
            TextField(
              style: const TextStyle(color: Colors.white),
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Enter OTP',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Logika verifikasi OTP
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
              child: const Text('Verify OTP'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
