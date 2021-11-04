import 'package:demo01/data.dart';
import 'package:flutter/material.dart';

itemStory() {
  return Stack(
    children: [
      Container(
        padding: const EdgeInsets.only(right: 50),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
              image: NetworkImage(Data.urlStory), fit: BoxFit.cover),
        ),
      ),
      Positioned(
          top: 10,
          left: 10,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.white,
                child: Image.network(
                  Data.url,
                  fit: BoxFit.cover,
                ),
              )))
    ],
  );
}