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
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Icon(
                            Icons.picture_as_pdf_rounded,
                            size: 30,
                          ))),
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: const Text(
                        'Selecione para abrir o PDF',
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
        ));
  }
}
