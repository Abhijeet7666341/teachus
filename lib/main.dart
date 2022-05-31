import 'package:flutter/material.dart';
import 'package:teachus/video_screen.dart';
import 'package:teachus/youtube_video_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  String? getIdFromLink() {
    String? videoIdd = YoutubePlayer.convertUrlToId("your url here");
    return videoIdd;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainHomePage(),
    );
  }
}

class MainHomePage extends StatefulWidget {
  MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text("Video Player with link"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VideoScreen(
                    videoLink:
                        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Youtube Video Player"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YouTubeVideo(
                    videoLink: 'https://youtu.be/dnQ_yh6nvCM',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
