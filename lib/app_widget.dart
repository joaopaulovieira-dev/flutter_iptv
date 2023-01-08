// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iptv/pages/home/home_page.dart';
import 'package:flutter_iptv/pages/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //darkmode
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      //lightmode
      // themeMode: ThemeMode.light,
      // theme: ThemeData.light(),
      //custom
      // themeMode: ThemeMode.system,

      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      // ),
      title: 'Pads Ambiente',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
