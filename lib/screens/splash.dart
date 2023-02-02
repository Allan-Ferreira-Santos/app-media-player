import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(63, 63, 63, 1),
      body: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width,
                  child: const Text(
                    'Seja Bem-Vindo',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: const Text(
                    'click no Botão para pode acessar a plataforma',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          )),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/ScreenNavigation');
            },
            child: Container(
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: const Center(
                child: Text(
                  'Acessa o App',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
