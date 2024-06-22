import 'package:flutter/widgets.dart';

Size deviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width > 600) {
    return const Size(1440, 1367);
  } else {
    return const Size(375, 1367);
  }
}

double size(BuildContext context, double mobile, double web) {
  final widthsized = MediaQuery.of(context).size.width;
  if (widthsized > 600) {
    return web;
  } else {
    return mobile;
  }
}

double webHeight(double height) {
  double webheight = 1024 / (690 / height);
  return webheight;
}

double webWidth(double width) {
  double webheight = 1440 / (375 / width);
  return webheight;
}
