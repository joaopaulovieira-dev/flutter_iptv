import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iptv/models/channel_model.dart';
import 'package:flutter_iptv/services/network_service.dart';
import 'package:flutter_iptv/shared/widgets/player_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

String urlChannel = "";

class _HomePageState extends State<HomePage> {
  bool fullscreen = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TV Online'),
        //backgroundColor: Colors.black,
      ),
      body: FutureBuilder<List<ChannelModel>>(
        future: fetchChannel(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].name),
                  leading: //caso a imagem retorne erro, mostra o icone
                      Image.network(
                    snapshot.data![index].urlLogo,
                    width: 50,
                    height: 50,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(child: Icon(Icons.error));
                    },
                  ),
                  onTap: () {
                    urlChannel = snapshot.data![index].urlChannel;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlayerWidget(),
                      ),
                    );
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              //mostra o codigo do erro
              child: Text('Error: ${snapshot.error}'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
