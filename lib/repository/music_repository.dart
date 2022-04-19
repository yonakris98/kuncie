import 'package:kuncie/provider/music_provider.dart';

class MusicRepository {
  MusicProvider _apiProvider = MusicProvider();

  Future getSearchArtist(data) {
    return _apiProvider.getSearchArtist(data);
  }
}
