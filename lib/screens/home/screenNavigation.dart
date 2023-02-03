import 'package:app_2_sales/components/header.dart';
import 'package:app_2_sales/screens/audio/audioScreen.dart';
import 'package:app_2_sales/screens/video/videoScreen.dart';
import 'package:app_2_sales/screens/pdf/pdfScreen.dart';
import 'package:flutter/material.dart';

class ScreenNavigation extends StatefulWidget {
  const ScreenNavigation({super.key});

  @override
  State<ScreenNavigation> createState() => ScreenNavigationState();
}

class ScreenNavigationState extends State<ScreenNavigation> {
  int selectedIndex = 0;

  PageController controllerPages = PageController();

  setPage(value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
    controllerPages = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100), child: Header()),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: PageView(
            onPageChanged: setPage,
            controller: controllerPages,
            children: const [VideoScreen(), PdfScreen(), AudioScreen()],
          ),
        ),
        bottomNavigationBar: Container(
          height: size.height * 0.1,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color.fromRGBO(63, 63, 63, 1)),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: const Color.fromRGBO(63, 63, 63, 1),
            selectedItemColor: Colors.white,
            selectedFontSize: 15,
            selectedIconTheme: const IconThemeData(size: 30),
            showSelectedLabels: true,
            currentIndex: selectedIndex,
            onTap: (value) {
              controllerPages.animateToPage(value,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: 'Video',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.picture_as_pdf_rounded),
                label: 'PDF',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.music_note_rounded),
                label: 'Áudio',
              ),
            ],
          ),
        ));
  }
}
