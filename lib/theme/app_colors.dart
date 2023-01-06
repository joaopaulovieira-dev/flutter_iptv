import 'package:flutter/material.dart';

abstract class AppColors {
  Color get primary;
  Color get secundary;
  Color get background;
  Color get fontDefaultColor;
  Color get tabBarColor;
  Color get loadingAnimationColor;
  Border get borderC;
  Border get borderD;
  Border get borderE;
  Border get borderF;
  Border get borderG;
  Border get borderA;
  Border get borderB;
  Border get borderTransparent;
}

class AppColorsDefault implements AppColors {
  @override
  Color get primary => Colors.white;

  @override
  Color get secundary => Colors.black;

  @override
  Color get background => Colors.black;

  @override
  Color get fontDefaultColor => Colors.white;

  @override
  Color get tabBarColor => Colors.white;

  @override
  Color get loadingAnimationColor => Colors.white;

  @override
  Border get borderC => Border.all(
        color: const Color(0xffFF0000),
        width: 2,
      );

  @override
  Border get borderD => Border.all(
        color: const Color(0xffFF9900),
        width: 2,
      );

  @override
  Border get borderE => Border.all(
        color: const Color(0xffFFCC00),
        width: 2,
      );

  @override
  Border get borderF => Border.all(
        color: const Color(0xff00CC00),
        width: 2,
      );

  @override
  Border get borderG => Border.all(
        color: const Color(0xff0099FF),
        width: 2,
      );

  @override
  Border get borderA => Border.all(
        color: const Color(0xffFF0099),
        width: 2,
      );

  @override
  Border get borderB => Border.all(
        color: const Color(0xff9900FF),
        width: 2,
      );

  @override
  Border get borderTransparent => Border.all(
        color: Colors.transparent,
        width: 2,
      );
}
