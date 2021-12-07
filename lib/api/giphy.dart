import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class GiphyAPI {
  static Future<List<dynamic>> BuscarGifs(String search, int offset) async {
    var uri = Uri.https('api.giphy.com', '/v1/gifs/search', {
      'api_key': '1CYYivEibVP4tvKDcSOzssCRicN4p5Cz',
      'q': search,
      'limit': '10',
      'offset': offset.toString(),
      'rating': 'g',
      'lang': 'pt'
    });

    var response = await http.get(uri);

    List<dynamic> json = convert.jsonDecode(response.body)["data"];

    return json.map((x) => x["embed_url"]).toList();
  }
}
