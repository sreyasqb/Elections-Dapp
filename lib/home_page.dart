// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:cn_package/provider/metamask.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('gi');
    final metaMaskProvider = Provider.of<MetaMaskProvider>(context);
    if (metaMaskProvider.isEnabled && metaMaskProvider.isInOperatingChain) {
      print('conntected');
      print(metaMaskProvider.currentAddress);
      print('thats the address');
    } else if (metaMaskProvider.isConnected && !metaMaskProvider.isInOperatingChain) {
      print('Wrong chain please connected to ${metaMaskProvider.operatorChain}');

    }
    else if (metaMaskProvider.isEnabled){
      print('check your metamask');
    }

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
    final metaMaskProvider = Provider.of<MetaMaskProvider>(context);
    return SizedBox(
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.amber,
        ),
        onPressed: () async {
          // Navigator.pushNamed(context, page);
          // print('hi');
          await metaMaskProvider.connect();
          
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
