import 'package:flutter/material.dart';

Widget commonPageBody({Widget? child}) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: child,
    ),
  );
}
