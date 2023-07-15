// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import './new_playlist.dart';
// import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class Playlist {
  final String image;
  Playlist({required this.image});
}

class Playlist1 {
  final String image1;
  Playlist1({required this.image1});
}

// ignore: must_be_immutable, use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  final searchController = TextEditingController();

  List<Playlist> playlist = [
    Playlist(image: 'assets/images/1.png'),
    Playlist(image: 'assets/images/2.png'),
    Playlist(image: 'assets/images/3.png'),
    Playlist(image: 'assets/images/4.png'),
  ];

  List<Playlist1> playlist1 = [
    Playlist1(image1: 'assets/images/1.png'),
    Playlist1(image1: 'assets/images/2.png'),
    Playlist1(image1: 'assets/images/3.png'),
    Playlist1(image1: 'assets/images/4.png'),
  ];

  Widget buildPlaylist({required Playlist playlist}) => Container(
        // height: 190,
        width: 190,
        margin: EdgeInsets.only(left: 15),
        alignment: Alignment.topLeft,
        child: Image.asset(playlist.image),
      );

  Widget buildPlaylist1({required Playlist1 playlist1}) => Container(
        // height: 190,
        width: 190,
        margin: EdgeInsets.only(left: 15),
        alignment: Alignment.topLeft,
        child: Image.asset(playlist1.image1),
      );

  void selectPlaylist(BuildContext ctx) {
    // navigating to new page
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return NewPlaylist();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          shadowColor: Colors.black87,
          title: Text(
            "Hey There!",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black87,
                  Colors.deepPurple.shade800,
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          searchController.clear();
                        },
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // transfer to api
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.all(18),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Trending Now!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 2,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => selectPlaylist(context),
                      borderRadius: BorderRadius.circular(10),
                      splashColor: Theme.of(context).primaryColor,
                      child: buildPlaylist(playlist: playlist[index]),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.only(left: 18),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Playlists',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 2,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => selectPlaylist(context),
                      borderRadius: BorderRadius.circular(10),
                      splashColor: Theme.of(context).primaryColor,
                      child: buildPlaylist1(playlist1: playlist1[index]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
