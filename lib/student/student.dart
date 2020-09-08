import 'package:arvore_app/student/activities.dart';
import 'package:arvore_app/student/forest.dart';
import 'package:arvore_app/student/memory.dart';
import 'package:arvore_app/util/constants.dart';
import 'package:arvore_app/library/library.dart';
import 'package:flutter/material.dart';


class StudentActionsPage extends StatefulWidget {
  @override
  _StudentActionsPageState createState() => _StudentActionsPageState();
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

class _StudentActionsPageState extends State<StudentActionsPage> {
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
      home: TeacherActionsWidget(),
    );
  }
}

class TeacherActionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60.0),
              child: Text(
                AppConstants
                    .of(context)
                    .labelTitle,
                style: TextStyle(
                  color: Color(0xFF619D5C),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            Container(
              child: Text(AppConstants
                  .of(context)
                  .labelCreatedBy,
                  style: TextStyle(
                    color: Color(0xFF787878),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'Quicksand',
                  )),
              padding: EdgeInsets.only(bottom: 60.0),
            ),
            Container(
               child: Container(
                  height: 65,
                  width: 350,
                  child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => LibraryPage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10.0))),
                      label: Padding(
                        child: Text(AppConstants.of(context).labelLibrary,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              fontFamily: 'Quicksand',
                            )),
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      icon: Image.asset(AppConstants.of(context).iconBooks),
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
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => ActivitiesPage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10.0))),
                      label: Padding(
                        child: Text(AppConstants.of(context).labelActivities,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              fontFamily: 'Quicksand',
                            )),
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      icon: Image.asset(AppConstants.of(context).iconActivities),
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
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => MemoryPage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10.0))),
                      label: Padding(
                        child: Text(AppConstants.of(context).labelMemories,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              fontFamily: 'Quicksand',
                            )),
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      icon: Image.asset(AppConstants.of(context).iconTree),
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
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => ForestPage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10.0))),
                      label: Padding(
                        child: Text(AppConstants.of(context).labelForest,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              fontFamily: 'Quicksand',
                            )),
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      icon: Image.asset(AppConstants.of(context).iconForest),
                      textColor: Colors.white,
                      splashColor: Color(0xFFFF9900),
                      color: Color(0xFFB1D0AE)),
                )),
          ],
        ),
      ),
    );
  }
}
