import 'package:firstap_codelab_1/Adaptive_Responsive.dart';
import 'package:firstap_codelab_1/ParallaxEffect.dart';
import 'package:firstap_codelab_1/Responsive_YouTube.dart';

import 'package:firstap_codelab_1/TodoApp_Home.dart';
import 'package:firstap_codelab_1/homepage.dart';
import 'package:firstap_codelab_1/homepage2.dart';
import 'package:firstap_codelab_1/homepage3.dart';
import 'package:firstap_codelab_1/homepage4.dart';
// ignore: unused_import
//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('Mybox');
  //debugPaintSizeEnabled = true;
  runApp(
    Codelab(),
  );
}

class Codelab extends StatelessWidget {
  const Codelab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/TodoAppHome',
      routes: {
        '/homepage': (context) => MyHomePage(),
        '/homepage2': (context) => homepage2(),
        '/homepage3': (context) => homepage3(),
        '/homepage4': (context) => homepage4(),
        '/ParallaxEffect': (context) => ParallaxEffect(),
        '/YoutubeResponsive': (context) => YoutubeResponsive(),
        '/Adaptive_Responsive': (context) => Adaptive_res(),
        '/TodoAppHome': (context) => TodoAppHome(),
      },
    );
  }
}
