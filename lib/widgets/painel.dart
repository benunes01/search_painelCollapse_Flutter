import 'package:flutter/material.dart';
import 'package:flutter_collapse/flutter_collapse.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';

class Painel extends StatelessWidget {
  final String titulo;
  final String corpo;
  final AsyncSnapshot<Object> snapshot;
  final BehaviorSubject<bool> painel;

  Color color = Colors.black;

  Painel({
    @required this.titulo,
    @required this.corpo,
    @required this.snapshot,
    @required this.painel,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Collapse(
      padding: EdgeInsets.fromLTRB(
          ScreenUtil().setHeight(27),
          ScreenUtil().setHeight(0),
          ScreenUtil().setHeight(0),
          ScreenUtil().setHeight(35)),
      showBorder: false,
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(
            ScreenUtil().setHeight(5),
            ScreenUtil().setHeight(0),
            ScreenUtil().setHeight(0),
            ScreenUtil().setHeight(0)),
        height: ScreenUtil().setHeight(70),
        child: Text(
          this.titulo,
          style: TextStyle(
              color: color,
              fontFamily: 'open-sans-semi-bold',
              fontWeight: FontWeight.bold,
              fontSize: 16.0),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(
            ScreenUtil().setHeight(0),
            ScreenUtil().setHeight(0),
            ScreenUtil().setHeight(30),
            ScreenUtil().setHeight(0)),
          child: Text(
        this.corpo,
        style: TextStyle(
            color: Colors.black, fontFamily: 'open-sans', fontSize: 14.0),
      )),
      value: this.snapshot.data == null ? false : this.snapshot.data,
      onChange: (bool value) {
    this.painel.add(value);

    }
      ,
    );
  }
}
