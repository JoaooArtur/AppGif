import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class GiphyAPI {
  static Future<List<String>> BuscarGifs(String search, int offset) async {
    String url = "api.giphy.com/v1/gifs/search?api_key=1CYYivEibVP4tvKDcSOzssCRicN4p5Cz&p=${search}teste&limit=10&offset=${offset}&rating=g&lang=pt";

    var response = await http.get(Uri.https(url, ''));

    return convert.jsonDecode(response.body)["data"].map((x) => x["url"]).toList();
  }
}
