import 'package:flutter/material.dart';

class AdressBox extends StatelessWidget {
  const AdressBox({
    super.key,
    required this.userName,
  });
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      child: Column(children: [
        Text(userName),
      ]),
    );
  }
}
