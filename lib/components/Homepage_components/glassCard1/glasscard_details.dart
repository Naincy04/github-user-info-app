import 'package:flutter/cupertino.dart';

import '../../../pages/home_page.dart';
import '../../glass_cards.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';
import 'card4.dart';
import 'card5.dart';

Column glassCard1() {
  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.only(top: 6.0),
      ),
      const Text(
        "Bio",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        mapResponse['bio'].toString(),
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      ),
      const SizedBox(
        height: 25,
      ),
      const Text(
        "Github stats",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Stack(
        children: [
          const GlassCards(),
          Column(
            children: [
              card1(),
              card2(),
              card3(),
              card4(),
              card5(),
            ],
          ),
        ],
      ),
    ],
  );
}
