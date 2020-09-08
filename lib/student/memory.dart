import 'package:arvore_app/student/photoView.dart';
import 'package:arvore_app/util/constants.dart';
import 'package:flutter/material.dart';

class MemoryPage extends StatefulWidget {
  @override
  _MemoryPageState createState() => _MemoryPageState();
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

class _MemoryPageState extends State<MemoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFFB1D0AE),
            body: Stack(children: <Widget>[
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    image: new AssetImage(AppConstants.of(context).imageTree),
                    fit: BoxFit.cover,
                  ))),
              Positioned(
                bottom: 400.0,
                child: _buildCircleAvatar(AppConstants.of(context).urlPhotoMock,
                    EdgeInsets.only(bottom: 0)),
              ),
              Positioned(
                bottom: 500.0,
                left: 110,
                child: _buildCircleAvatar(
                    AppConstants.of(context).urlPhotoMock1,
                    EdgeInsets.only(bottom: 0)),
              ),
              Positioned(
                bottom: 290.0,
                left: 120,
                child: _buildCircleAvatar(
                    AppConstants.of(context).urlPhotoMock8,
                    EdgeInsets.only(bottom: 0)),
              ),
              Positioned(
                bottom: 460.0,
                left: 260,
                child: _buildCircleAvatar(
                    AppConstants.of(context).urlPhotoMock9,
                    EdgeInsets.only(bottom: 0)),
              ),
              Positioned(
                bottom: 280.0,
                left: 280,
                child: _buildCircleAvatar(
                    AppConstants.of(context).urlPhotoMock7,
                    EdgeInsets.only(bottom: 0)),
              )
            ])));
  }
}

Widget _buildCircleAvatar(String photo, EdgeInsets padding) {
  return LayoutBuilder(
    builder: (context, constraints) {
      return Container(
          height: 150,
          width: 150,
          child: FlatButton(
             child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                photo,
              ),
            ),
            onPressed: () async {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => (PhotoViewWidget(image: photo,))),
              );
            },
          ));
    },
  );
}
