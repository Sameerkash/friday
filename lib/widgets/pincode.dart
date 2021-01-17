import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PincCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      // padding: const EdgeInsets.symmetric(vertical: 8.0,),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: PinCodeTextField(
        appContext: context,
        pastedTextStyle: TextStyle(
          color: Colors.green.shade600,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        length: 4,
        obscureText: false,
        obscuringCharacter: '*',
        animationType: AnimationType.fade,
        // validator: (v) {
        //   if (v.length < 3) {
        //     return "I'm from validator";
        //   } else {
        //     return null;
        //   }
        // },
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          activeColor: Colors.white,
          selectedColor: Colors.white,
          borderRadius: BorderRadius.circular(15),
          inactiveColor: Colors.white,
          fieldHeight: 60,
          fieldWidth: 50,

          // activeFillColor: hasError ? Colors.orange : Colors.white,
        ),
        cursorColor: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        textStyle: TextStyle(fontSize: 20, height: 1.6),

        // errorAnimationController: errorController,
        // controller: textEditingController,
        keyboardType: TextInputType.number,

        onCompleted: (v) {
          print("Completed");
        },
        // onTap: () {
        //   print("Pressed");
        // },
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
      ),
    );
  }
}
