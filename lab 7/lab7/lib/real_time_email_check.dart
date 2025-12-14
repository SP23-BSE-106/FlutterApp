import 'package:flutter/material.dart';

class RealTimeEmailCheck extends StatefulWidget {
  const RealTimeEmailCheck({super.key});

  @override
  State<RealTimeEmailCheck> createState() => _RealTimeEmailCheckState();
}

class _RealTimeEmailCheckState extends State<RealTimeEmailCheck> {
  final TextEditingController emailController = TextEditingController();
  String? errorMessage;

  final List<String> takenEmails = ["test@gmail.com", "admin@gmail.com"];

  @override
  void initState() {
    super.initState();

    // Real-time email checking
    emailController.addListener(() {
      final email = emailController.text.trim();

      if (takenEmails.contains(email)) {
        setState(() => errorMessage = "This email is already taken");
      } else {
        setState(() => errorMessage = null);
      }
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup – Real-Time Validation")),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                errorText: errorMessage,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: errorMessage == null && emailController.text.isNotEmpty
                  ? () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Signup Successful!"),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  : null,
              child: const Text("Signup"),
            ),
          ],
        ),
      ),
    );
  }
}
