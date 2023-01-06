import 'package:flutter/material.dart';
import 'package:flutter_iptv/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ApptextStyles {
  TextStyle get titleSplashPage;
  TextStyle get subTitleSplashPage;
  TextStyle get titlePoliticaPrivacidadePage;
  TextStyle get subTitlePoliticaPrivacidadePage;
  TextStyle get titleTermoUsoPage;
  TextStyle get subTitleTermoUsoPage;
  TextStyle get titleDrawer;
  TextStyle get subTitleDrawer;
  TextStyle get titleAppBar;
  TextStyle get notas;
  TextStyle get tabBar;
  TextStyle get listDrawer;
  TextStyle get textSobre;
  TextStyle get textSobreVersiculo;
}

class ApptextStylesDefault implements ApptextStyles {
  @override
  TextStyle get titleSplashPage => GoogleFonts.raleway(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get subTitleSplashPage => GoogleFonts.raleway(
        fontSize: 15,
        fontWeight: FontWeight.w300,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get titlePoliticaPrivacidadePage => GoogleFonts.raleway(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get subTitlePoliticaPrivacidadePage => GoogleFonts.raleway(
        fontSize: 13,
        fontWeight: FontWeight.w300,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get titleTermoUsoPage => GoogleFonts.raleway(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get subTitleTermoUsoPage => GoogleFonts.raleway(
        fontSize: 13,
        fontWeight: FontWeight.w300,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get titleDrawer => GoogleFonts.raleway(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get subTitleDrawer => GoogleFonts.raleway(
        fontSize: 10,
        fontWeight: FontWeight.w300,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get titleAppBar => GoogleFonts.raleway(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get notas => GoogleFonts.raleway(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get tabBar => GoogleFonts.raleway(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get listDrawer => GoogleFonts.raleway(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get textSobre => GoogleFonts.raleway(
        fontSize: 13,
        fontWeight: FontWeight.w300,
        color: AppTheme.colors.fontDefaultColor,
      );

  @override
  TextStyle get textSobreVersiculo => GoogleFonts.raleway(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: AppTheme.colors.fontDefaultColor,
      );
}
