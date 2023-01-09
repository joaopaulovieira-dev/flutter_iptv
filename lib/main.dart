import 'package:flutter/material.dart';
import 'package:flutter_iptv/app_widget.dart';
import 'package:flutter_iptv/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //Garante que o aplicativo seja iniciado
  configureDependencies(); //Configura as dependências do aplicativo
  runApp(const AppWidget()); //Inicia o aplicativo
}
