import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeTextFieldWidget extends StatelessWidget {
  const PinCodeTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      obscureText: true,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(16),
        fieldHeight: 55,
        fieldWidth: 80,
        activeFillColor: Colors.white,
        activeColor: Colors.grey,
        inactiveFillColor: Colors.grey,
        inactiveColor: Colors.white,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      // errorAnimationController: errorController,
      // controller: textEditingController,
      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {
        // print(value);
        // setState(() {
        //   currentText = value;
        // });
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }
}
