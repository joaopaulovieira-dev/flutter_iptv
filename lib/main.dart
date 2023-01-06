import 'package:flutter/material.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool fullscreen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: fullscreen == false
            ? AppBar(
                backgroundColor: Colors.black,
                title: const Text('TV Online'),
                centerTitle: true,
              )
            : null,
        body: Padding(
          padding:
              fullscreen ? EdgeInsets.zero : const EdgeInsets.only(top: 32.0),
          child: YoYoPlayer(
            aspectRatio: 16 / 9,
            url:
                // 'https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm',
                // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
                // "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
                "https://transcoder.proxy.tokplay.com.br:443/videos/REDEGLOBO/format720p_REDEGLOBO.m3u8",
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
                Icons.add_circle_outline_outlined,
                size: 40.0,
                color: Colors.white,
              ),
              pauseIcon: Icon(
                Icons.remove_circle_outline_outlined,
                size: 40.0,
                color: Colors.white,
              ),
              videoQualityPadding: EdgeInsets.all(5.0),
            ),
            videoLoadingStyle: VideoLoadingStyle(
              loading: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 16.0),
                    Text("Carregando canal"),
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
        ),
      ),
    );
  }
}
