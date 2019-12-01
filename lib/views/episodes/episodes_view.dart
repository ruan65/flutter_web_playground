import 'package:flutter/material.dart';
import 'package:flutter_web_playground/datamodels/season_details_model.dart';
import 'package:flutter_web_playground/view_models/episodes_view_model.dart';
import 'package:flutter_web_playground/widgets/episodes_list/episodes_list.dart';
import 'package:flutter_web_playground/widgets/season_details/season_details.dart';
import 'package:provider_architecture/provider_architecture.dart';

class EpisodesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<EpisodesViewModel>.withConsumer(
      viewModel: EpisodesViewModel(),
      onModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) =>
          SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 100),
          SeasonDetails(
            details: SeasonDetailsModel(
              title: 'SEASON 1',
              description:
                  'This season covers the absolute basics of Flutter Web Dev '
                  'to get us up and running with a basic web app.',
            ),
          ),
          SizedBox(
            height: 50,
          ),
          model.episodes == null
              ? CircularProgressIndicator()
              : EpisodesList(episodes: model.episodes),
        ],
      )),
    );
  }
}
