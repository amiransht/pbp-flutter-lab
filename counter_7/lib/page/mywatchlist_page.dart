import 'dart:convert';
import 'package:counter_7/page/mywatchlist_detailpage.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import '../main.dart';
import '../drawer.dart';
import '../model/mywatchlist.dart';
import '../data_source/mywatchlist_remote_data_source.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  late WatchListRemoteDataSource _remoteDataSource;
  late Future<List<WatchList>> _futureWatchList;

  @override
  void initState() {
    Future<List<WatchList>> fetchWatchList() async {
      var url =
          Uri.parse('https://tugas3-amiransht.herokuapp.com/mywatchlist/json/');
      var response = await http.get(
        url,
      );
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

    super.initState();
    _remoteDataSource = WatchListRemoteDataSource();
    print(_remoteDataSource);
    _futureWatchList = _remoteDataSource.fetchWatchList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watchlist'),
        elevation: 0,
        centerTitle: true,
      ),
      drawer: buildDrawer(context),
      body: FutureBuilder(
        future: _futureWatchList,
        builder: (context, AsyncSnapshot snapshot) {
          print(snapshot.data);
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "Tidak ada watchlist :(",
                    style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, blurRadius: 2.0)
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyWatchListDetail(
                          watchList: snapshot.data[index],
                        ),
                      ),
                    ),
                    child: Text(
                      "${snapshot.data![index].fields.title}",
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
