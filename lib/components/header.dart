import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(63, 63, 63, 1),
        toolbarHeight: size.height * 0.12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            Expanded( 
              flex: 10,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: Text(
                        'Seja Bem-Vindo',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: const Text(
                        'Selecione a operação desejada',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 209, 209, 209)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: SizedBox(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/',
                      (route) => false,
                    );
                  },
                  child: const Icon(
                    Icons.exit_to_app_outlined,
                    size: 30,
                  ),
                )))
          ],
        ));
  }
}
