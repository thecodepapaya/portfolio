import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(),
        IconButton(onPressed: () {}, icon: Icon(Icons.flag)),
        IconButton(onPressed: () {}, icon: Icon(Icons.flag)),
        IconButton(onPressed: () {}, icon: Icon(Icons.flag)),
      ],
    );
  }
}
