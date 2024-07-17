import "package:first_app/dice_roller.dart";
import "package:flutter/material.dart";
// import "package:first_app/styled_text.dart";

const startAlignment = Alignment.topLeft; // var can be reassigned the value
const endAlignment = Alignment
    .bottomRight; // final declare the variable will not accept ew value.

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.warm({super.key})
      : color1 = Colors.amber,
        color2 = Colors.redAccent;

  const GradientContainer.cool({super.key})
      : color1 = Colors.blueAccent,
        color2 = Colors.teal;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
