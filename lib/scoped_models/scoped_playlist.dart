import 'package:scoped_model/scoped_model.dart';
import './../models/episode.dart';

// creating single instance in app.dart
class ScopedPlaylist extends Model {
  List<Episode> episodes = [];
  Episode selectedEpisode;

  // business logic
  addEpisode(Episode episode) {
    episodes.add(episode);
    notifyListeners();
  }

  setSelectedEpisode(Episode e) {
    if(selectedEpisode != null) {
      selectedEpisode.isPlaying = false;
    }

    selectedEpisode = e;
    selectedEpisode.isPlaying = true;

    notifyListeners();
  }

}
