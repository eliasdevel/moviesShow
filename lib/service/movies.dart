import 'package:moviesShow/config.dart';
import 'package:moviesShow/helpers/http.dart';

class Movies {
  static get({int id = null}) async {
    if (id != null) {}
    String url = "$urlApi/movies";
    return await Http.get(url);
  }
}
