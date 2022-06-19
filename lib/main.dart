// ignore_for_file: prefer_const_constructors

import 'package:cn_package/provider/metamask.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'candidate_registration_page.dart';
import 'voting_page.dart';

void main() {
  runApp(const VotingApp());
}

class VotingApp extends StatelessWidget {
  const VotingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => MetaMaskProvider(),
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
            ),
            fontFamily: 'Source Sans Pro'),
        routes: {
          '/': (context) => HomePage(),
          '/1': (context) => CandidateRegistrationPage(),
          '/2': (context) => VotingPage(),
        },
        initialRoute: '/',
        title: 'CN Package',
      ),
    );
  }
}
