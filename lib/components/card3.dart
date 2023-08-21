import 'package:flutter/cupertino.dart';

import '../pages/home_page.dart';

Row card3() {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 35.0,
          vertical: 25.0,
        ),
        child: Text(
          "Total commits  :  ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Text(
        mapDataResponse['reviews'].toString(),
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      )
    ],
  );
}
