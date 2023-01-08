import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iptv/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((_) =>
        Navigator.pushReplacementNamed(
            context, '/home')); //Após 5 segundos a tela será trocada

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    )); //Cor do status bar

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TV Online",
                      textAlign: TextAlign.left,
                      style: AppTheme.textStyles.titleSplashPage,
                    ),
                    Text(
                      "Assista a vários canais de TV",
                      textAlign: TextAlign.left,
                      style: AppTheme.textStyles.subTitleSplashPage,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//TODO: Refazer o layout da SplahPage
