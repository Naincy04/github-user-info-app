import 'package:flutter/cupertino.dart';

import 'glassmorphism.dart';

class glassCards extends StatelessWidget {
  const glassCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Glassmorphism(
            blur: 15,
            opacity: 0.2,
            radius: 20,
            child: Container(
              height: 250,
              padding: const EdgeInsets.all(20),
            ),
          ),
        ),
        const SizedBox(
          height: 260,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 265.0,
          ),
          child: Glassmorphism(
            blur: 15,
            opacity: 0.2,
            radius: 20,
            child: Container(
              height: 200,
            ),
          ),
        ),
        const SizedBox(
          height: 360,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 480.0,
          ),
          child: Glassmorphism(
            blur: 15,
            opacity: 0.2,
            radius: 20,
            child: Container(
              height: 200,
            ),
          ),
        ),
      ],
    );
  }
}
