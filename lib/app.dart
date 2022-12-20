import 'package:flutter/material.dart';
import './scoped_models/scoped_playlist.dart';
import './screens/playlist/playlist.dart';
import './models/episode.dart';
import './models/podcast.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    final playlistManager = ScopedPlaylist();
    final  podcasts = Podcast.fetchAll();

    for(Podcast p in podcasts) {
      for(Episode e in p.episodes) {
        playlistManager.addEpisode(e);
      }
    }

    return MaterialApp(
      home: Playlist(playlistManager),
    );
  }
}