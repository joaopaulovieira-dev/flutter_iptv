import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iptv/pages/home/home_page.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  bool fullscreen = false;

  @override
  Widget build(BuildContext context) {
    //inicia o modo paisagem
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: Colors.black,
      body: YoYoPlayer(
        aspectRatio: 16 / 9,
        url: urlChannel,
        allowCacheFile: true,
        onCacheFileCompleted: (files) {
          debugPrint('Cached file length ::: ${files?.length}');

          if (files != null && files.isNotEmpty) {
            for (var file in files) {
              debugPrint('File path ::: ${file.path}');
            }
          }
        },
        onCacheFileFailed: (error) {
          debugPrint('Cache file error ::: $error');
        },
        videoStyle: const VideoStyle(
          qualityStyle: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          forwardAndBackwardBtSize: 30.0,
          playButtonIconSize: 40.0,
          playIcon: Icon(
            Icons.play_circle_outline_outlined,
            size: 40.0,
            color: Colors.white,
          ),
          pauseIcon: Icon(
            Icons.pause_circle_outline_outlined,
            size: 40.0,
            color: Colors.white,
          ),
          videoQualityPadding: EdgeInsets.all(5.0),
          fullscreenIcon: Icon(
            Icons.fullscreen,
            size: 40.0,
            color: Colors.white,
          ),
          forwardIcon: Icon(
            Icons.forward_10,
            size: 40.0,
            color: Colors.white,
          ),
          backwardIcon: Icon(
            Icons.replay_10,
            size: 40.0,
            color: Colors.white,
          ),
        ),
        videoLoadingStyle: VideoLoadingStyle(
          loading: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 16.0),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ],
            ),
          ),
        ),
        onFullScreen: (value) {
          setState(() {
            if (fullscreen != value) {
              fullscreen = value;
            }
          });
        },
      ),
    );
  }
}
