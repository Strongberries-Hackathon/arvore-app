import 'package:arvore_app/util/constants.dart';
import 'package:flutter/material.dart';


class ForestPage extends StatefulWidget {
  @override
  _ForestPageState createState() => _ForestPageState();
}

Map<int, Color> color =
{
  50:Color.fromRGBO(177,208,174, .1),
  100:Color.fromRGBO(177,208,174, .2),
  200:Color.fromRGBO(177,208,174, .3),
  300:Color.fromRGBO(177,208,174, .4),
  400:Color.fromRGBO(177,208,174, .5),
  500:Color.fromRGBO(177,208,174, .6),
  600:Color.fromRGBO(177,208,174, .7),
  700:Color.fromRGBO(177,208,174, .8),
  800:Color.fromRGBO(177,208,174, .9),
  900:Color.fromRGBO(177,208,174, 1),
};

MaterialColor colorCustom = MaterialColor(0xFFB1D0AE, color);

class _ForestPageState extends State<ForestPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.of(context).labelTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F4E6),
        primarySwatch: colorCustom,
        bottomAppBarColor: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ForestWidget(),
    );
  }
}
class ForestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ActivitiesPage"),
      ),
    );
  }
}

