import 'package:flutter/material.dart';

import '../../../controller/utils/media_size.dart';

Widget commonPageBody({Widget? child}) {
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.fromLTRB(
        fixedRatio(15),
        fixedRatio(15),
        fixedRatio(15),
        fixedRatio(10),
      ),
      child: child,
    ),
  );
}
