import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class GiphyAPI {
  static Future<List<String>> BuscarGifs(String search, int offset) async {
    var uri = Uri.https('api.giphy.com', '/v1/gifs/search', {
      'api_key': '1CYYivEibVP4tvKDcSOzssCRicN4p5Cz',
      'q': search,
      'limit': '10',
      'offset': offset.toString(),
      'rating': 'g',
      'lang': 'pt'
    });

    var response = await http.get(uri);

    List<dynamic> fuck = convert.jsonDecode(response.body)["data"];

    List<String> gifs = [];

    fuck.forEach((x) {
      print(x["url"]);
    });

    return gifs;
  }
}
