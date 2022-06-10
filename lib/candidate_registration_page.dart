// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'login_details.dart';

class CandidateRegistrationPage extends StatelessWidget {
  const CandidateRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Candidate Login',
        ),
      ),
      body: LoginDetails(),
    );
  }
}
