import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class VideoLive extends StatefulWidget {
  const VideoLive({Key? key}) : super(key: key);

  @override
  _VideoLiveState createState() => _VideoLiveState();
}

class _VideoLiveState extends State<VideoLive> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'zMFb8Y2QLPc',

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: YoutubePlayerIFrame(
          controller: _controller,
          aspectRatio: 1/2,
        ),
      ),
    );
  }
}
