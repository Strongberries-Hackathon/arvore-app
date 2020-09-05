import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'splashscreen.dart';

void main() {
  runApp(SplashScreenPage());
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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[Arvore de Memórias]',
       theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F4E6),
        primarySwatch: colorCustom,
        bottomAppBarColor: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Árvore de Memórias'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}