import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../components/VideoPlayer.dart';

class VideoPresentation extends StatefulWidget {
  final String? urlVideo;
  const VideoPresentation({this.urlVideo, super.key});

  @override
  State<VideoPresentation> createState() => _VideoPresentationState();
}

class _VideoPresentationState extends State<VideoPresentation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        height: size.height,
        width: size.width,
        child: Video(
          videoPlayerController:
              VideoPlayerController.network(widget.urlVideo!),
        ),
      ),
    );
  }
}
