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
  final String imageTree = 'assets/tree_map.png';
  final String iconBooks = 'assets/books.png';
  final String urlPhotoMock = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/1eeb699d3ce525d81b7961b974b324b4';
  final String urlPhotoMock1 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/684f8d499c9afb3b824a0589464263e3';
  final String urlPhotoMock2 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/ccc79077508cfc3c7029ccce919af7b2';
  final String urlPhotoMock3 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/e071f4aff2c334dbe6685e364fb7ec3c';
  final String urlPhotoMock4 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/7ec2e77a16e91d4d68dcd075f60500f2';
  final String urlPhotoMock5 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/44eb9949810e4ec1efee38c3698f51bf';
  final String urlPhotoMock6 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/33b4a0ec55f540e5a83c113ea4205f1b';
  final String urlPhotoMock7 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/4be93d8c10808ebc898aa21220b1531d';
  final String urlPhotoMock8 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/fd7bfedd387fd72de5c9d4f3cab00f07';
  final String urlPhotoMock9 = 'https://arvore-app-heroku-upload.s3.us-west-2.amazonaws.com/c5c9b8e4986cf3bf134e999055fb2e0b';

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