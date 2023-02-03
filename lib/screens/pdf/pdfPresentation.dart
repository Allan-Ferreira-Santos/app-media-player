import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfPresentation extends StatefulWidget {
  final String? urlPdf;
  const PdfPresentation({this.urlPdf, super.key});

  @override
  State<PdfPresentation> createState() => _PdfPresentationState();
}

class _PdfPresentationState extends State<PdfPresentation> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

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
          child: SfPdfViewer.network(
            widget.urlPdf!,
            key: _pdfViewerKey,
          ),
        ));
  }
}
