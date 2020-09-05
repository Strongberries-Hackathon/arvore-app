import 'package:arvore_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenWidget(),
    );
  }
}
class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          backgroundColor: const Color(0xFFF7F4E6),
          navigateAfterSeconds: MyHomePage(title: "Árvore",),
          loaderColor: Colors.transparent,
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/initial_image.png"),
                    fit: BoxFit.cover
                  )
                ),
              child: Container(
                height:120,
                width:120,
                child: FlareActor (
                  "assets/loading.flr" ,
                  animation: "loading",
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

