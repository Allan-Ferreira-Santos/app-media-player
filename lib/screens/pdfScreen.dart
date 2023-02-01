import 'package:flutter/material.dart';

class pdfScreen extends StatefulWidget {
  const pdfScreen({super.key});

  @override
  State<pdfScreen> createState() => _pdfScreenState();
}

class _pdfScreenState extends State<pdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'PDF',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
