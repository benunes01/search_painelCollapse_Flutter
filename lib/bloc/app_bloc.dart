import 'package:searchpainel/ajuda/bloc/ajuda_bloc.dart';

class AppBloc {
  AjudaBloc _ajudaBloc;

  AppBloc() {

    _ajudaBloc = AjudaBloc();
  }
  AjudaBloc get ajudaBloc => _ajudaBloc;
}
