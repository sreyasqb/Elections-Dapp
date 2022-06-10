// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Voting App',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ChoiceButton(
              textData: 'Login As Candidate',
              page: '/1',
            ),
            SizedBox(
              height: 30,
            ),
            ChoiceButton(
              textData: 'Login As Voter',
              page: '/2',
            ),
          ],
        ),
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  final String textData;
  final String page;
  ChoiceButton({Key? key, required this.textData, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.amber,
        ),
        onPressed: () {
          Navigator.pushNamed(context, page);
        },
        child: Text(
          textData,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
