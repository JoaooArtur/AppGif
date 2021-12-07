import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class GiphyAPI {
  static Future<List<String>> BuscarGifs(String search, int offset) async {
    var uri = Uri.https('api.giphy.com/v1/gifs/search?api_key=1CYYivEibVP4tvKDcSOzssCRicN4p5Cz&p=${search}&limit=10&offset=${offset}&rating=g&lang=pt', '');
    print(uri);
    var response = await http.get(uri);
    print(response.body);
    return convert.jsonDecode(response.body)["data"].map((x) => x["url"]).toList();
  }
}
