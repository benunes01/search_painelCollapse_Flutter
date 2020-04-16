import 'package:flutter/material.dart';
import 'package:searchpainel/ajuda/screen/ajudar_screen.dart';
import 'package:searchpainel/bloc/app_bloc.dart';
import 'package:searchpainel/bloc/bloc_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appBloc = AppBloc();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: appBloc,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Ajuda(),
        ),
      );

  }
}
