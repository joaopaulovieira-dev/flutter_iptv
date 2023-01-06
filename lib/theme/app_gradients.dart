import 'dart:math';

import 'package:flutter/material.dart';

abstract class AppGradients {
  LinearGradient get backgraoud;
  RadialGradient get radialGradientC;
  RadialGradient get radialGradientD;
  RadialGradient get radialGradientE;
  RadialGradient get radialGradientF;
  RadialGradient get radialGradientG;
  RadialGradient get radialGradientA;
  RadialGradient get radialGradientB;
  RadialGradient get radialGradientTransparent;
  LinearGradient get linearGradientSplash;
}

class AppGradientsDefault implements AppGradients {
  @override
  LinearGradient get backgraoud => const LinearGradient(
        colors: [
          Color(0xff000000),
          Color(0xff000000),
        ],
        transform: GradientRotation(2.35619 * pi),
      );

  @override
  RadialGradient get radialGradientC => const RadialGradient(
      colors: [Color(0xffFF6666), Color(0xffFF0000)],
      center: Alignment.center,
      radius: 0.8);

  @override
  RadialGradient get radialGradientD => const RadialGradient(
      colors: [Color(0xffFFCC66), Color(0xffFF9900)],
      center: Alignment.center,
      radius: 0.8);

  @override
  RadialGradient get radialGradientE => const RadialGradient(
      colors: [Color(0xffFFFF66), Color(0xffFFCC00)],
      center: Alignment.center,
      radius: 0.8);

  @override
  RadialGradient get radialGradientF => const RadialGradient(
      colors: [Color(0xff99FF66), Color(0xff00CC00)],
      center: Alignment.center,
      radius: 0.8);

  @override
  RadialGradient get radialGradientG => const RadialGradient(
      colors: [Color(0xff66CCFF), Color(0xff0099FF)],
      center: Alignment.center,
      radius: 0.8);

  @override
  RadialGradient get radialGradientA => const RadialGradient(
      colors: [Color(0xffFF99CC), Color(0xffFF0099)],
      center: Alignment.center,
      radius: 0.8);

  @override
  RadialGradient get radialGradientB => const RadialGradient(
      colors: [Color(0xffCC99FF), Color(0xff9900FF)],
      center: Alignment.center,
      radius: 0.8);

  @override
  RadialGradient get radialGradientTransparent => const RadialGradient(colors: [
        Colors.transparent,
        Colors.transparent,
      ], center: Alignment.center, radius: 0.8);

  @override
  LinearGradient get linearGradientSplash => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(0, 0, 0, 0.5),
          Color.fromRGBO(0, 0, 0, 0.9),
        ],
      );
}
