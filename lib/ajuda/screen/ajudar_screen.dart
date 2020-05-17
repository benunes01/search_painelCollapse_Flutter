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
          child: ListView.builder(
              itemCount: ajudabloc.listaTitulos.length + 1,
              itemBuilder: (BuildContext context, int index) {
//Para colocar o Container no final da lista
                if (index == ajudabloc.listaTitulos.length) {
                  return Container(
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
                        GestureDetector(
                          onTap: (){
                          },
                          child: Text(
                            'Fale com a gente',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14.0,
                                fontFamily: 'open-sans-semi-bold',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );

//A lista de paineis
                }else{
                  return StreamBuilder<Object>(
                      stream: ajudabloc.qualPainel(index),
                      builder: (context, snapshot) {
//Transformando a lista em minuscula.
                        List<String> filterLowerCase = [];
                        ajudabloc.listaTitulos.forEach((element) {
                          filterLowerCase.add(element.toLowerCase());
                        });
                        var filter = filterLowerCase
                            .where((t) =>
                            t.contains(
                                ajudabloc.controller.text.toLowerCase()))
                            .toList();

                        if (filter.contains(ajudabloc.listaTitulos
//elementAt(equivalente ao titulo)
                            .elementAt(index)
                            .toString()
                            .toLowerCase()) ||
                            ajudabloc.controller.text.length == 0) {
                          print(ajudabloc.controller.text.length);
                          return Painel(
                            titulo: ajudabloc.listaTitulos.elementAt(index),
                            corpo: ajudabloc.listaCorpo[index],
                            painel: ajudabloc.qualPainel(index),
                            snapshot: snapshot.data,
                            color: snapshot.data == true
                                ? Colors.blue
                                : Colors.black,
                          );
                        } else {
                          print('Caiu no else');
                          return Container();
                        }
                      });

                }

              }),
        ),
      ),


        ],
      ),
    );
  }
}
