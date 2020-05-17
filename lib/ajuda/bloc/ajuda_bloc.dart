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

  //Cada titulo que os paineis vai ter, deve ser colocado nesse 'listaTitulos' e chamado ele lá
  //

  TextEditingController controller = new TextEditingController(text: '');
  List<String> listaTitulos = ['A Nagro é segura?', 'A Nagro é um banco?', 'Quais as vantagens de solicitar crédito com a Nagro?', 'Quais são as taxas e prazos para contratação?', 'Como funcionam as garantias?', 'Em quanto tempo minha proposta fica pronta?', 'Todos os documentos que a Nagro me pede são obrigatórios?', 'Posso pedir crédito se possuo restrições em meu nome?', 'O que é o cadastro único Nagro?'];
  List<String> listaCorpo = ['A Nagro utiliza garantia real própria ou de terceiro em forma de alienação fiduciária (mais rápida e de menor custo) e com valor de 130% da operação, para tirar as burocracias e dar mais agilidade nas respostas e concessão do crédito.', 'Após o envio dos documentos, com tudo ok, te retornamos com uma proposta em até 3 dias úteis. Após isso, encaminhamos para o financiador ideal para o seu perfil.', 'Sim. Os documentos solicitados são básicos para qualquer operação e é forma ideal que temos para comprovar o potencial do produtor para as diversas fontes financiadoras.', 'Possuímos parcerias com diversas fontes financiadoras. Trabalhamos com um crédito personalizado, e, por isso, as taxas e prazos das operações variam conforme o perfil do produtor.', 'A Nagro utiliza garantia real própria ou de terceiro em forma de alienação fiduciária (mais rápida e de menor custo) e com valor de 130% da operação, para tirar as burocracias e dar mais agilidade nas respostas e concessão do crédito.','Após o envio dos documentos, com tudo ok, te retornamos com uma proposta em até 3 dias úteis. Após isso, encaminhamos para o financiador ideal para o seu perfil.', 'Sim. Os documentos solicitados são básicos para qualquer operação e é forma ideal que temos para comprovar o potencial do produtor para as diversas fontes financiadoras.', 'Precisamos respeitar as particularidades das políticas de crédito de cada instituição. Realizamos uma análise completa do seu perfil, verificando a produção, capacidade de pagamento, fluxo de caixa e garantias. Dessa forma, caso haja alguma restrição, conseguimos te orientar em como mudar a sua situação.', 'Quando você inicia um pedido de crédito com a gente, te solicitamos alguns dados e documentos. Com isso, realizamos um cadastro interno para estruturar sua proposta. Com esse mesmo cadastro, você tem possibilidade de se conectar com diversas fontes financiadoras'];

  // Verifica qual index no ListView.Builder do painel para fazer o collapse certo
  BehaviorSubject<bool> qualPainel(index){
    if(index == 1){
      return painel1;
    }else if(index == 2){
      return painel2;
    }
    else if(index == 2){
      return painel2;
    }
    else if(index == 3){
      return painel3;
    }
    else if(index == 4){
      return painel4;
    }
    else if(index == 5){
      return painel5;
    }
    else if(index == 6){
      return painel6;
    }
    else if(index == 7){
      return painel7;
    }
    else if(index == 8){
      return painel8;
    }
    else if(index == 9){
      return painel9;
    }

  }

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
