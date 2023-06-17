import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  

  void rollDice() {
    //
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-2.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(
                  //   top: 20,
                  // ),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 21)),
              child: const Text('Role the Dice'))
        ],
      )),
    );
  }
}