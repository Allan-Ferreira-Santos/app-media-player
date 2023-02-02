import 'package:app_2_sales/controller/jsonController.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../components/VideoPlayer.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  var url;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      InkWell(
        onTap: () async {
          String response = await JsonController().currentJson('video');
          setState(() {
            url = response;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.4),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: const Icon(
                        Icons.video_collection_rounded,
                        size: 30,
                      ))),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                    'Selecione para reproduzir o Video',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      if (url != null) ...[
        Container(
          margin: EdgeInsets.only(top: 170),
          height: size.height * 0.35,
          child: Video(
            videoPlayerController: VideoPlayerController.network(url),
          ),
        )
      ]
    ]);
  }
}
