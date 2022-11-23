import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/mywatchlist.dart';

class WatchListRemoteDataSource {
  Future<List<WatchList>> fetchWatchList() async {
    var url =
        Uri.parse('https://tugas3-amiransht.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
    );
    print("tes");
    var data = jsonDecode(utf8.decode(response.bodyBytes));
    print(data);

    List<WatchList> listToDo = [];
    for (var d in data) {
      if (d != null) {
        listToDo.add(WatchList.fromJson(d));
      }
    }

    return listToDo;
  }
}
