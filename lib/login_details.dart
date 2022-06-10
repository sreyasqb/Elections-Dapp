import 'package:flutter/material.dart';
import 'input_text.dart';

class LoginDetails extends StatelessWidget {
  const LoginDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InputText(field: 'Name', hint: 'John Smith'),
        InputText(field: 'Aadhaar Number', hint: '************'),
        InputText(field: 'Mobile Number', hint: '0123456789'),
      ],
    );
  }
}
