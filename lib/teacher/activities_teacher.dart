import 'dart:convert';

import 'package:arvore_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:arvore_app/util/client_api.dart';
import 'package:json_annotation/json_annotation.dart';

class TeacherActivityPage extends StatefulWidget {
  @override
  _TeacherActivityPageState createState() => _TeacherActivityPageState();
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

class _TeacherActivityPageState extends State<TeacherActivityPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.of(context).labelTitle,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF7F4E6),
          primarySwatch: colorCustom,
          bottomAppBarColor: colorCustom,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Quicksand',
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decorationColor: Colors.red,
            ),
          )),
      home: TeacherActivityWidget(),
    );
  }
}

class CustomValidator {
  static FormFieldValidator required({
    String errorText = 'Campo obrigatório',
  }) {
    return (valueCandidate) {
      if (valueCandidate == null ||
          ((valueCandidate is Iterable ||
                  valueCandidate is String ||
                  valueCandidate is Map) &&
              valueCandidate.length == 0)) {
        return errorText;
      }
      return null;
    };
  }
}

class TeacherActivityWidget extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final ValueChanged _onChanged = (val) => print(val);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nova atividade'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              FormBuilder(
                  key: _fbKey,
                  readOnly: false,
                  child: Column(children: <Widget>[
                    SizedBox(height: 30),
                    FormBuilderFilterChip(
                      attribute: 'grades',
                      decoration: const InputDecoration(
                        labelText: 'Escolha uma ou mais séries',
                      ),
                      options: [
                        FormBuilderFieldOption(
                            value: 'primeiroAno', child: Text('1° ano')),
                        FormBuilderFieldOption(
                            value: 'segundoAno', child: Text('2° ano')),
                        FormBuilderFieldOption(
                            value: 'terceiroAno', child: Text('3° ano')),
                      ],
                      validators: [
                        CustomValidator.required(),
                      ],
                    ),
                    SizedBox(height: 30),
                    FormBuilderRadioGroup(
                      attribute: 'type',
                      decoration: const InputDecoration(
                          labelText: 'Escolha o tipo de atividade'),
                      onChanged: _onChanged,
                      options: [
                        FormBuilderFieldOption(
                            value: 'picture', child: Text('Foto')),
                        FormBuilderFieldOption(
                            value: 'drawing', child: Text('Desenho')),
                      ],
                      validators: [
                        CustomValidator.required(),
                      ],
                    ),
                    SizedBox(height: 30),
                    FormBuilderTextField(
                      attribute: 'description',
                      decoration: InputDecoration(
                        labelText: 'Descreva a atividade em detalhes',
                      ),
                      onChanged: (val) {
                        print(val);
                      },
                      valueTransformer: (text) {
                        return text == null ? null : text;
                      },
                      validators: [
                        CustomValidator.required(),
                      ],
                      keyboardType: TextInputType.text,
                    ),
                  ])),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      color: Theme.of(context).accentColor,
                      child: Text(
                        'Salvar',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (_fbKey.currentState.saveAndValidate()) {
                          print(_fbKey.currentState.value);
                          _saveActivity(_fbKey.currentState.value);
                        } else {
                          print(_fbKey.currentState.value);
                          print('validation failed');
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                      child: MaterialButton(
                    color: Theme.of(context).accentColor,
                    child: Text(
                      'Limpar',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      _fbKey.currentState.reset();
                    },
                  )),
                ],
              ),
            ])));
  }
}

void _saveActivity(data) async {
  Api _api = Api();
  var fromData = new Map<String, dynamic>.from(data);

  for (var grade in fromData["grades"]) {
    var result = await _api.http_get_by_id('grade', grade);
    if (result.ok) {
      List<int> studantsArray = [];
      var data = result.data as dynamic;
      var studants = data['studants'];
      await studants.forEach((studant) async {
        studantsArray.add(studant);
      });
      var payload = {
        "book_id": 1,
        "description": fromData['description'],
        "studants": studantsArray,
        "type": fromData['type']
      };
      await _api.http_post('activity', payload);
    }
  }
}

@JsonSerializable()
class Activities {
  String grades;
  String type;
  String description;
  Activities(this.grades, this.type, this.description);
}
