import 'package:flutter/cupertino.dart';

import '../../../pages/home_page.dart';

Row card1() {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 35.0,
          vertical: 25.0,
        ),
        child: Text(
          "Total repositories  :  ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Text(
        mapResponse['public_repos'].toString(),
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      )
    ],
  );
}
