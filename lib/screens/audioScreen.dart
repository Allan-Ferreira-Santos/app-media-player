import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                        Icons.music_note_outlined,
                        size: 30,
                      ))),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                    'Selecione para reproduzir a Musica',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
