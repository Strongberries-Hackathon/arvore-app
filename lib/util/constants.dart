import 'package:flutter/material.dart';

class AppConstants extends InheritedWidget {
  static AppConstants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<AppConstants>();

  const AppConstants({Widget child, Key key}): super(key: key, child: child);

  final String labelTitle = 'Arvore de Memórias';
  final String labelSelectProfile = 'Selecione seu Perfil:';
  final String labelStudentProfile = 'Aluno';
  final String labelTeacherProfile = 'Professor';
  final String labelCreatedBy = 'by StrongBerries';
  final String labelActivities = 'Atividades';
  final String labelLibrary = 'Biblioteca';
  final String labelAppName = 'Arvore';
  final String labelForest = 'Floresta';
  final String labelMemories = 'Memórias';
  final String imgPathTree = 'assets/initial_image.png';
  final String iconStudent = 'assets/student.png';
  final String iconTeacher = 'assets/teacher.png';
  final String iconBooks = 'assets/books.png';
  final String iconTree = 'assets/tree.png';
  final String iconForest = 'assets/trees.png';
  final String iconActivities = 'assets/activities.png';
  final String loadingPath = 'assets/loading.flr';
  final String loadingPath1 = 'assets/loading_book.flr';
  final String loadingPath2 = 'assets/loading_clear.flr';
  final String loadingDots = 'assets/loading_dots.flr';
  final String animationType = 'loading';


  @override
  bool updateShouldNotify(AppConstants oldWidget) => false;
}