//homePage.dart

import 'package:flutter/material.dart';
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
                  leading: Image.network(
                    width: 50,
                    height: 50,
                    snapshot.data![index].urlLogo,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error);
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
