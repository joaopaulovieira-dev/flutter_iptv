import 'package:flutter/material.dart';
import 'package:flutter_iptv/pages/home/home_page.dart';
import 'package:flutter_native_player/custom_controller/configuration/player_progress_colors.dart';
import 'package:flutter_native_player/flutter_native_player.dart';
import 'package:flutter_native_player/model/player_resource.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: FlutterNativePlayer(
            progressColors: PlayerProgressColors(
              //Cores do player
              played: Colors.red,
              buffered: const Color.fromARGB(255, 0, 255, 8),
              baseBar: Colors.white,
              thumb: Colors.red,
            ),
            playerResource: PlayerResource(
              videoUrl: urlChannel, //URL do vídeo
              playerSubtitleResources: null, //Legenda (opcional)
            ),
            playWhenReady: true, //Inicia o vídeo automaticamente
            width: double.infinity, //Largura da tela
            height: double.infinity, //Altura da tela
          ),
        ),
      ),
    );
  }
}
