import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import './../../scoped_models/scoped_playlist.dart';
import './../../models/episode.dart';
import './widgets/episode_list.dart';
import './widgets/player.dart';


class Playlist extends StatelessWidget {
  final playlistManager;

  const Playlist(this.playlistManager);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Playlist')),
        body: ScopedModel<ScopedPlaylist>(
          model: playlistManager,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EpisodeList(_handleEpisodeListViewItemTap),
                Player(),
              ]),
        ));
  }

  _handleEpisodeListViewItemTap(Episode e) {
    playlistManager.setSelectedEpisode(e);
  }
}
