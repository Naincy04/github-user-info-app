import 'package:flutter/cupertino.dart';

import 'glassmorphism.dart';

class GlassCards extends StatelessWidget {
  const GlassCards({
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
      ],
    );
  }
}
