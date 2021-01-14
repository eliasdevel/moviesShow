import 'package:moviesShow/config.dart';
import 'package:moviesShow/helpers/http.dart';

class Ratings {
  static get({int id = null}) async {
    if (id != null) {}
    String url = "$urlApi/ratings";
    return await Http.get(url);
  }
}
