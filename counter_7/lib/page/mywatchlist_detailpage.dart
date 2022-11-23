import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../drawer.dart';



class MyWatchListDetail extends StatefulWidget {
  final WatchList watchList;
  const MyWatchListDetail({
    Key? key,
    required this.watchList,
  }) : super(key: key);

  @override
  State<MyWatchListDetail> createState() => _MyWatchListDetailState();
}

class _MyWatchListDetailState extends State<MyWatchListDetail> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Wacth Item Detail'),
          elevation: 0,
        ),
        drawer: buildDrawer(context),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.watchList.fields.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      children: [
                        const Text(
                          'Release Date: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(widget.watchList.fields.releaseDate)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Rating: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('${widget.watchList.fields.rating}/5')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Status: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.watchList.fields.watched
                                  ? 'wacthed'
                                  : 'not wacthed',
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                          width: 12,
                          child: Checkbox(
                            value: widget.watchList.fields.watched,
                            onChanged: (value) {
                              setState(() {
                                widget.watchList.fields.watched = value!;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Review: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      widget.watchList.fields.review,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50)),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      );
}