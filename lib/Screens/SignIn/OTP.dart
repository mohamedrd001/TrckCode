import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:trck/widgets/buttons.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController OtoController = TextEditingController();

  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 30,
              ),
              onTap: () {},
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Enter your mobile number",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Add your phone number. We'll send you a verificati",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    
                    const SizedBox(height: 20),
                    Pinput(
                      controller: OtoController,
                      length: 6,
                      showCursor: true,
                      defaultPinTheme: PinTheme(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(68, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onCompleted: (value) {
                        setState(() {
                          otpCode = value;
                        });
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Resend New Code'),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          child: OtoController.text.length == 6
                              ? ButtonA(
                                  title: 'Next',
                                  onPressed: () {},
                                )
                              : const ButtonB(
                                  title: 'Next',
                                )),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}