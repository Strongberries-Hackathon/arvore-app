import 'package:arvore_app/util/client_api.dart';
import 'package:arvore_app/util/constants.dart';
import 'package:flutter/material.dart';

class ActivitiesPage extends StatefulWidget {
  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
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

class _ActivitiesPageState extends State<ActivitiesPage> {
  var _activities;
  Api _api = Api();

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
      home: _activitiesListWidget(),
    );
  }

  Widget _activitiesListWidget() {
    const rowSpacer=TableRow(
        children: [
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 8,
          )
        ]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(
              color: Colors.black26, width: 1, style: BorderStyle.none),
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text('Livro'))),
              TableCell(
                child: Center(child: Text('Professor')),
              ),
              TableCell(child: Center(child: Text('Atividade'))),
              TableCell(child: Center(child: Text('Status'))),
            ]),
            rowSpacer,
            TableRow(children: [
              TableCell(
                child: Center(child: Text('Chapeuzinho Amarelo')),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('Marcia')),
              ),
              TableCell(
                child: Center(
                    child:
                        Text('Tire uma foto com sua familía usando um chapéu')),
                verticalAlignment: TableCellVerticalAlignment.top,
              ),
              TableCell(
                child: Center(child: Text('Feito')),
                verticalAlignment: TableCellVerticalAlignment.top,
              ),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(child: Text('Somos Todos Extraordinários'))),
              TableCell(
                child: Center(child: Text('Carol')),
              ),
              TableCell(
                  child: Center(
                      child: Text(
                          'Desenhe o que é mais Extraordinário na sua vida'))),
              TableCell(child: Center(child: Text('Pendente'))),
            ]),
          ],
        ),
      ),
    );
  }
}
