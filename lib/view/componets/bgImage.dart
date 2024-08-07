import 'package:flutter/cupertino.dart';

Container backgroungImage() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    child: Image.asset(
      'assets/images/images.jpg',
      fit: BoxFit.cover,
    ),
  );
}