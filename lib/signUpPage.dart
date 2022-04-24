import 'package:flutter/material.dart';
import 'package:sms_auto_fill/sms_verification_page.dart';

class SendCodePage extends StatelessWidget {
  const SendCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 200,),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SmsVerificationPage()));
                  },
                  child: const Text("Send sms"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
