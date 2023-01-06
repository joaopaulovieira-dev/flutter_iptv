import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_iptv/models/channel_model.dart';
import 'package:http/http.dart' as http;

Future<List<ChannelModel>> fetchChannel() async {
  final response = await http
      .get(Uri.parse('https://tvonline.joaopaulovieira.dev/channel.json'));

  if (response.statusCode == 200) {
    return compute(parseChannel, response.body);
  } else {
    throw Exception('Erro ao carregar os canais');
  }
}

List<ChannelModel> parseChannel(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed
      .map<ChannelModel>((json) => ChannelModel.fromJson(json))
      .toList();
}
