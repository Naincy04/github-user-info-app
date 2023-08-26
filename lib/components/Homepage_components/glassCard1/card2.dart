import 'package:flutter/cupertino.dart';

import '../../../pages/home_page.dart';

Row card2() {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 35.0,
          vertical: 2.0,
        ),
        child: Text(
          "Total public gists  :  ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      // Text(
      //   mapResponse['public_gists'].toString(),
      //   style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      // )
    ],
  );
}
