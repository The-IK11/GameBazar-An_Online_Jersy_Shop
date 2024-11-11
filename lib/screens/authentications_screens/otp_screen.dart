import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final int _otpCodeLength = 4;
  final List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _onOtpCallBack(String otpCode, bool isAutofill) {
    if (otpCode.length == _otpCodeLength) {
      print("OTP কোড: $otpCode");
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTP',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 21),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Forget Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Please enter your email and message to reset your password.',
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(_otpCodeLength, (index) {
                    return Container(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        controller: _controllers[index],
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          hintText: '0',
                          counterText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Required';
                          }
                          if (!RegExp(r'^[0-9]$').hasMatch(value)) {
                            return '0-9 only';
                          }
                          return null;
                        },
                      ),
                    );
                  }),
                ),
                SizedBox(height: 350),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // OTP ভেরিফিকেশনের জন্য সকল ইনপুটগুলি একত্রিত করে প্রিন্ট করা
                      String otpCode = _controllers.map((controller) => controller.text).join();
                      print("Validated OTP: $otpCode");
                      Get.snackbar('Massage', 'Seccussful');
                    }
                  },
                  child:  Container(
                    height: 60,
                    width:double.infinity,
                    decoration: BoxDecoration(
                      color:Colors.grey,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(
                      child: Text("Confirm OTP",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),),

                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}