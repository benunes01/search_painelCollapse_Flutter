import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:searchpainel/ajuda/bloc/ajuda_bloc.dart';
import 'package:searchpainel/widgets/Header.dart';
import 'package:searchpainel/widgets/ScrollShadowContainer.dart';
import 'package:searchpainel/widgets/painel.dart';
import 'package:searchpainel/bloc/bloc_provider.dart';

class Ajuda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 414, height: 896, allowFontScaling: false);

    final ajudabloc = BlocProvider.of(context).ajudaBloc;

    return Scaffold(
      appBar: Header(
        titulo: 'Ajuda',
        isVoltar: false,
        context: context,
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: ScreenUtil().setHeight(76),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white70, width: 1),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      blurRadius: 6.0, // has the effect of softening the shadow
                      spreadRadius:
                          0.0, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        0.1, //
                      ))
                ]),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Qual sua dúvida?',
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blueAccent,
                ),
              ),
              //Coloca o controller no bloc para não apagar quando desce o teclado
              controller: ajudabloc.controller,
              onChanged: (value) {
                //Rebuildar a tela toda vez que altera um caracter

                (context as Element).markNeedsBuild();
              },
            ),
          ),
          Expanded(
            child: ScrollShadowContainer(
              elevation: MaterialElevation.the4dp,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel1,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
                                //elementAt(equivalente ao titulo)
                                .elementAt(0)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          print(ajudabloc.controller.text.length);
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(0),
                            corpo:
                                'Você pode preencher esse formulário aqui no nossa página que eu já vou direcionar diretamente para nosso time comercial, assim já vamos selecionando as melhores opções de crédito de acordo com seu perfil, uma dica; respondemos tudo lá no email cadastrado.',
                            painel: ajudabloc.painel1,
                            snapshot: snapshot,
                            color: ajudabloc.painel1.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          print('Caiu no else');
                          return Container();
                        }
                      }),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel2,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
                                .elementAt(1)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(1),
                            corpo:
                                'Você pode preencher esse formulário aqui no nossa página que eu já vou direcionar diretamente para nosso time comercial, assim já vamos selecionando as melhores opções de crédito de acordo com seu perfil, uma dica; respondemos tudo lá no email cadastrado.',
                            painel: ajudabloc.painel2,
                            snapshot: snapshot,
                            color: ajudabloc.painel2.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          return Container();
                        }
                      }),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel3,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();
                        // ----------------------------------
                        if (filter.contains(ajudabloc.listaTitulos
                                .elementAt(0)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(0),
                            corpo: 'Corpo',
                            painel: ajudabloc.painel3,
                            snapshot: snapshot,
                            color: ajudabloc.painel3.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          return Container();
                        }
                      }),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel4,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
                                .elementAt(1)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(1),
                            corpo: 'Corpo',
                            painel: ajudabloc.painel4,
                            snapshot: snapshot,
                            color: ajudabloc.painel4.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          return Container();
                        }
                      }),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel5,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
                                .elementAt(0)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(0),
                            corpo: 'Corpo',
                            painel: ajudabloc.painel5,
                            snapshot: snapshot,
                            color: ajudabloc.painel5.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          return Container();
                        }
                      }),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel6,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
                                .elementAt(1)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(1),
                            corpo: 'Corpo',
                            painel: ajudabloc.painel6,
                            snapshot: snapshot,
                            color: ajudabloc.painel6.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          return Container();
                        }
                      }),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel7,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
                                //elementAt(equivalente ao titulo)
                                .elementAt(1)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(1),
                            corpo: 'Corpo',
                            painel: ajudabloc.painel7,
                            snapshot: snapshot,
                            color: ajudabloc.painel7.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          return Container();
                        }
                      }),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel8,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
                                .elementAt(0)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(0),
                            corpo: 'Corpo',
                            painel: ajudabloc.painel8,
                            snapshot: snapshot,
                            color: ajudabloc.painel8.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          return Container();
                        }
                      }),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  StreamBuilder<Object>(
                      stream: ajudabloc.painel9,
                      builder: (context, snapshot) {
                        //Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) => t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
                                .elementAt(1)
                                .toString()
                                .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(1),
                            corpo: 'Corpo',
                            painel: ajudabloc.painel9,
                            snapshot: snapshot,
                            color: ajudabloc.painel9.value == true
                                ? Colors.blueAccent
                                : Colors.black,
                          );
                        } else {
                          return Container();
                        }
                      }),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        ScreenUtil().setHeight(0),
                        ScreenUtil().setHeight(0),
                        ScreenUtil().setHeight(0),
                        ScreenUtil().setHeight(50)),
                    height: ScreenUtil().setHeight(150),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Não encontrou o que procurava?',
                          style: TextStyle(
                              color: const Color(0xff576078),
                              fontSize: 14.0,
                              fontFamily: 'open-sans-semi-bold'),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(15),
                        ),
                        Text(
                          'Fale com a gente',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 14.0,
                              fontFamily: 'open-sans-semi-bold',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
