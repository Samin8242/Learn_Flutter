import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text('You answerd x out of Y question correctly'),
           const SizedBox(
              height: 30,
            ),
           const Text('list of ans and question'),
            const SizedBox(
              width: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('restart quiz'))
          ],
        ),
      ),
    );
  }
}
