import 'package:app_2_sales/controller/jsonController.dart';
import 'package:app_2_sales/screens/video/videoPresentation.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  String? url;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () async {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoPresentation(urlVideo: url),
              ));
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
    ]);
  }
}
