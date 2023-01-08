import 'package:flutter/material.dart';
import 'package:flutter_iptv/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //Garante que o aplicativo seja iniciado
  runApp(const AppWidget()); //Inicia o aplicativo
}
