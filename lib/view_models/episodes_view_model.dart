import 'package:flutter/cupertino.dart';
import 'package:flutter_web_playground/datamodels/episode_item_model.dart';
import 'package:flutter_web_playground/service_locator.dart';
import 'package:flutter_web_playground/services/api.dart';

class EpisodesViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes;

  List<EpisodeItemModel> get episodes => _episodes;

  Future getEpisodes() async {
    final episodesResult = await _api.getEpisodes();

    print('episodes result: $episodesResult');

    if (episodesResult is String) {
      // show error
    } else {
      _episodes = episodesResult;
    }

    notifyListeners();
  }
}
