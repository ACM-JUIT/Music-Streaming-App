// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:music_streaming_app/main.dart';

class NewPlaylist extends StatefulWidget {
  const NewPlaylist({super.key});

  @override
  State<NewPlaylist> createState() => _MyWidgetState();
}

class Playlist3 {
  final String image3;
  Playlist3({required this.image3});
}

List<Playlist3> playlist3 = [
  Playlist3(image3: 'assets/images/1.png'),
  Playlist3(image3: 'assets/images/2.png'),
  Playlist3(image3: 'assets/images/3.png'),
  Playlist3(image3: 'assets/images/4.png'),
];

Widget buildPlaylist3({required Playlist3 playlist3}) => Container(
      height: 190,
      // width: double.infinity,
      margin: EdgeInsets.only(left: 15),
      alignment: Alignment.topLeft,
      child: Image.asset(playlist3.image3),
    );

class _MyWidgetState extends State<NewPlaylist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          shadowColor: Colors.black87,
          leading: BackButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            ),
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
                Container(
                  alignment: Alignment.centerRight,
                  // padding: EdgeInsets.all(5),
                  // margin: EdgeInsets.all(50),
                  margin:
                      EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 25),
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/images/4.png'),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 25),
                  child: Text(
                    'Name of the playlist',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   height: 300,
                //   width: 300,
                //   child: ListView.separated(
                //       scrollDirection: Axis.vertical,
                //       itemBuilder: (context, index) =>
                //           buildPlaylist3(playlist3: playlist3[index]),
                //       separatorBuilder: (context, _) => Container(
                //             margin: EdgeInsets.only(bottom: 15),
                //           ),
                //       itemCount: 4),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
