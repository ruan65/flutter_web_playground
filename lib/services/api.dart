import 'dart:convert';

import 'package:flutter_web_playground/datamodels/episode_item_model.dart';
import 'package:http/http.dart' as http;

const apiEndpoint =
    'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics';

class Api {
  Future<dynamic> getEpisodes() async {
    final url = '$apiEndpoint/courseEpisodes';
    print(url);
    final response = await http.get('$apiEndpoint/courseEpisodes');

    if (200 == response.statusCode) {
      var episodes = (json.decode(response.body) as List)
          .map((e) => EpisodeItemModel.fromJson(e))
          .toList();

      return episodes;
    }

    return 'Something went wrong';
  }
}
