import 'package:flutter/material.dart';
import 'package:flutter_web_playground/datamodels/episode_item_model.dart';

import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  final List<EpisodeItemModel> episodes;

  const EpisodesList({this.episodes});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: episodes.map((episode) => EpisodeItem(model: episode)).toList(),
    );
  }
}
