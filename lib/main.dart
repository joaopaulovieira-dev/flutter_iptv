import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iptv/app_widget.dart';
import 'package:flutter_iptv/injections/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //Garante que o aplicativo seja iniciado
  await Firebase.initializeApp(); //Inicializa o Firebase
  FlutterError.onError = FirebaseCrashlytics.instance
      .recordFlutterError; //Registra os erros do aplicativo no Crashlytics
  configureDependencies(); //Configura as dependências do aplicativo
  runApp(const AppWidget()); //Inicia o aplicativo
}
