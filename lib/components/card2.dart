import 'package:flutter/cupertino.dart';

import '../pages/home_page.dart';

Row card2() {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Text(
          "Total gists  :  ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Text(
        mapResponse['public_gists'].toString(),
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      )
    ],
  );
}
