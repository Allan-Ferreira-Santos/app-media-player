import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPresentation extends StatefulWidget {
  final String? urlAudio;
  const AudioPresentation({this.urlAudio, super.key});

  @override
  State<AudioPresentation> createState() => _AudioPresentationState();
}

class _AudioPresentationState extends State<AudioPresentation> {
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  /*
  * format Time
  * @author  Allan F Santos
  * @version 1.0 - 20230103 - initial release
  * param int seconds - seconds
  */

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 30),
                  child: Image.asset(
                    'assets/images/musica.jpg',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: IconButton(
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                        ),
                        onPressed: () {
                          if (isPlaying) {
                            player.pause();
                          } else {
                            player.play(UrlSource(widget.urlAudio!));
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Slider(
                  activeColor: Colors.white,
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (value) {
                    final position = Duration(seconds: value.toInt());
                    player.seek(position);
                    player.resume();
                  },
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        formatTime(position.inSeconds),
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(formatTime((duration - position).inSeconds),
                          style: const TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
