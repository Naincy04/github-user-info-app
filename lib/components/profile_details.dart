import 'package:flutter/material.dart';

import '../pages/home_page.dart';

Row profileDetails(String imgUrl) {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 10.0, top: 0.25),
      ),
      CircleAvatar(
        radius: 70,
        backgroundImage: NetworkImage(imgUrl),
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(mapResponse['name'].toString(),
              style:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 25)),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.people,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Text(
                    mapResponse['followers'].toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Followers"),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Text(
                    mapResponse['following'].toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Following"),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
