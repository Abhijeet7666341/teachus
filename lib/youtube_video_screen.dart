import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class YoutubeVideoScreen extends StatelessWidget {
//   static String myVideoId = 'PQSagzssvUQ';
//   // the full url: https://www.youtube.com/watch?v=PQSagzssvUQ&ab_channel=NASA
//   // it's an interesting video from NASA on Youtube

//   // Initiate the Youtube player controller
//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: myVideoId,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       mute: false,
//     ),
//   );

//   YoutubeVideoScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: const Text('Flutter and Youtube'),
//         // ),
//         body: YoutubePlayer(
//           controller: _controller,
//           liveUIColor: Colors.amber,
//         ),
//       ),
//     );
//   }
// }

class YouTubeVideo extends StatefulWidget {
  final String videoLink;
  YouTubeVideo({Key? key, required this.videoLink}) : super(key: key);

  @override
  State<YouTubeVideo> createState() => _YouTubeVideoState();
}

class _YouTubeVideoState extends State<YouTubeVideo> {
  String? videoId;
  YoutubePlayerController? _controller;
  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.videoLink);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: YoutubePlayer(
          controller: _controller!,
          liveUIColor: Colors.amber,
        ),
      ),
    );
  }
}
