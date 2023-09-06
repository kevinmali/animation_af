import 'package:flutter/material.dart';

import 'Views/Screen/Home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (ctx) => Home(),
    },
  ));
}
