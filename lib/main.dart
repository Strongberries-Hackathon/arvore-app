import 'package:arvore_app/splashscreen.dart';
import 'package:arvore_app/util/constants.dart';
import 'package:arvore_app/student/student.dart';
import 'package:arvore_app/teacher/teacher.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    AppConstants(
      child: SplashScreenPage(),
    ),
  );
}

Map<int, Color> color = {
  50: Color.fromRGBO(177, 208, 174, .1),
  100: Color.fromRGBO(177, 208, 174, .2),
  200: Color.fromRGBO(177, 208, 174, .3),
  300: Color.fromRGBO(177, 208, 174, .4),
  400: Color.fromRGBO(177, 208, 174, .5),
  500: Color.fromRGBO(177, 208, 174, .6),
  600: Color.fromRGBO(177, 208, 174, .7),
  700: Color.fromRGBO(177, 208, 174, .8),
  800: Color.fromRGBO(177, 208, 174, .9),
  900: Color.fromRGBO(177, 208, 174, 1),
};

MaterialColor colorCustom = MaterialColor(0xFFB1D0AE, color);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.of(context).labelTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF7F4E6),
        primarySwatch: colorCustom,
        bottomAppBarColor: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    home: MyHomePage(title: AppConstants.of(context).labelTitle),
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
  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 120.0),
              child: Text(
                AppConstants.of(context).labelTitle,
                style: TextStyle(
                  color: Color(0xFF619D5C),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            Container(
              child: Text(AppConstants.of(context).labelCreatedBy,
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'Quicksand',
                  )),
              padding: EdgeInsets.only(bottom: 60.0),
            ),
            Container(
              height: 45,
              width: 250,
              decoration: new BoxDecoration(
                  color: Color(0xFFFF9900),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Center(
                child: Text(AppConstants.of(context).labelSelectProfile,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Quicksand',
                    )),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 60.0),
                child: Container(
                  height: 65,
                  width: 350,
                  child: RaisedButton.icon(
                      onPressed: () async {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => StudentActionsPage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      label: Padding(
                        child: Text(AppConstants.of(context).labelStudentProfile,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              fontFamily: 'Quicksand',
                            )),
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      icon: Image.asset(AppConstants.of(context).iconStudent),
                      textColor: Colors.white,
                      splashColor: Color(0xFFFF9900),
                      color: Color(0xFFB1D0AE)),
                )),
            Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 65,
                  width: 350,
                  child: RaisedButton.icon(
                      onPressed: () async {
                         Navigator.push(context, new MaterialPageRoute(builder: (context) => TeacherActionsPage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      label: Padding(
                        child: Text(AppConstants.of(context).labelTeacherProfile,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              fontFamily: 'Quicksand',
                            )),
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      icon: Image.asset(AppConstants.of(context).iconTeacher),
                      textColor: Colors.white,
                      splashColor: Color(0xFFFF9900),
                      color: Color(0xFFB1D0AE)),
                ))
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
