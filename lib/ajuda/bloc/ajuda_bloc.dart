import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class AjudaBloc extends BlocBase {

  BehaviorSubject<bool> painel1 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel1 => painel1.stream;
  Sink<bool> get inPainel1 => painel1.sink;

  BehaviorSubject<bool> painel2 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel2 => painel2.stream;
  Sink<bool> get inPainel2 => painel2.sink;

  BehaviorSubject<bool> painel3 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel3 => painel3.stream;
  Sink<bool> get inPainel3 => painel3.sink;

  BehaviorSubject<bool> painel4 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel4 => painel4.stream;
  Sink<bool> get inPainel4 => painel4.sink;

  BehaviorSubject<bool> painel5 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel5 => painel5.stream;
  Sink<bool> get inPainel5 => painel5.sink;

  BehaviorSubject<bool> painel6 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel6 => painel6.stream;
  Sink<bool> get inPainel6 => painel6.sink;

  BehaviorSubject<bool> painel7 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel7 => painel7.stream;
  Sink<bool> get inPainel7 => painel7.sink;

  BehaviorSubject<bool> painel8 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel8 => painel8.stream;
  Sink<bool> get inPainel8 => painel8.sink;

  BehaviorSubject<bool> painel9 = new BehaviorSubject<bool>();
  Stream<bool> get outPainel9 => painel9.stream;
  Sink<bool> get inPainel9 => painel9.sink;

  //-------------------------------------------------------------


  BehaviorSubject<String> busca = new BehaviorSubject<String>();
  Stream<String> get outBusca => busca.stream;
  Sink<String> get inBusca => busca.sink;

  //Cada titulo que os paineis vai ter, deve ser colocado nesse 'listaTitulos' e chamando ele lá

  TextEditingController controller = new TextEditingController(text: '');
  List<String> listaTitulos = ['A BeCaptain é segura?', 'Como eu entro em contato?'];




  @override
  void dispose() {
    painel1.close();
    painel2.close();
    painel3.close();
    painel4.close();
    painel5.close();
    painel6.close();
    painel7.close();
    painel8.close();
    painel9.close();
  }

}