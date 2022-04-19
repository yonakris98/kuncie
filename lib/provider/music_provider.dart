import 'package:dio/dio.dart';
import 'package:kuncie/model/ListMusicModel.dart';
import 'dart:convert';

class MusicProvider {
  Dio _dio = Dio();

  // get API apple
  Future getSearchArtist(String artistName) async {
    try {
      _dio.options.connectTimeout = 5000; //5s
      _dio.options.receiveTimeout = 3000;

      Response response = await _dio.get(
          'https://itunes.apple.com/' + 'search?term=$artistName&media=music');

      // store to Model
      final responseJson = json.decode(response.data);
      return ListMusicModel.fromJson(responseJson);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
