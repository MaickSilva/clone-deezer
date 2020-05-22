import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

  // Endpoints ( flow , artists )
  // para mais informações : https://developers.deezer.com/api/explorer
  Future<Map> getDeezerApiWithIdProfile({ dynamic profileId, String endpoint }) async {
    final http.Response response = await http.get('https://api.deezer.com/user/$profileId/$endpoint');

    if(response.statusCode == 200) {
      String bodyResponse = utf8.decode(response.bodyBytes);
      return json.decode(bodyResponse);
    } else {
      throw Exception('Failed to load Api');
    }
  }

