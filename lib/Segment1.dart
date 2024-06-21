import 'package:flutter/material.dart';

class Segment1 extends StatefulWidget {
  const Segment1({Key? key}) : super(key: key);

  @override
  _Segment1State createState() => _Segment1State();
}

class _Segment1State extends State<Segment1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            child: const Image(
              image: NetworkImage(
                  "https://media-api.xogrp.com/images/9f14737c-2be7-4b2f-80ed-d9c36556e7dd~rs_768.h"),
              fit: BoxFit.cover, // Ensure the image covers the entire width
            ),
          ),
        )
      ],
    );
  }
}
