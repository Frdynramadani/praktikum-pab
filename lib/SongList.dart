import 'package:activity_3/api/apiController.dart';
import 'package:flutter/material.dart';
import 'package:activity_3/widget/listsong.dart';

class SongList extends StatefulWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  State<SongList> createState() => _ProdState();
}

class _ProdState extends State<SongList> {
  Future<List<dynamic>>? _data;

  @override
  void initState() {
    // TODO: implement initState
    _data = ApiController().getdatas();
    super.initState();
  }

  bool change = false;
  List song = [
    {"img": "assets/taylor1.jpg", "txt": "Speak Now"},
    {"img": "assets/taylor2.jpg", "txt": "Lover"},
    {"img": "assets/taylor3.jpg", "txt": "Evermore"},
    {"img": "assets/taylor4.jpg", "txt": "Folklore"},
    {"img": "assets/taylor5.jpg", "txt": "Red"},
    {"img": "assets/taylor6.jpg", "txt": "1989"},
    {"img": "assets/taylor7.jpg", "txt": "Midnights"},
    {"img": "assets/taylor8.jpg", "txt": "Feraless"},
    {"img": "assets/taylor9.jpg", "txt": "Reputation"},
    {"img": "assets/taylor10.jpg", "txt": "Taylor Swift"}
  ];

  @override
  Widget build(BuildContext context) {
    // print('ini data $_data');
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Spotify',
          style: TextStyle(
            fontSize: 30,
            fontFamily: "poppins",
            height: 0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.green,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: FutureBuilder<List<dynamic>>(
            future: _data,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print('Ini adalah Data ${snapshot.data}');
                return SizedBox(
                  width: 500,
                  height: 700,
                  child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return list_song(
                          img:
                              'https://saiyaapi.site/${snapshot.data![index]["photo"]}',
                          desc: snapshot.data![index]['desc'],
                        );
                      }),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              }
            }),
      ),
    );
  }
}
