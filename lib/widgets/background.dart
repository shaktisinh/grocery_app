import 'package:flutter/cupertino.dart';
import 'package:grocery_app/style/color.dart';

class GradientBackground extends StatelessWidget {
  final Color color;

  const GradientBackground({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color, whiteColor],
        stops: const [0, 0.3],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
    );
  }
}
