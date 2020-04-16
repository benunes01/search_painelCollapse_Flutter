import 'package:flutter/material.dart';
import 'package:searchpainel/ajuda/screen/ajudar_screen.dart';
import 'bloc/bloc_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get appBloc => null;

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
