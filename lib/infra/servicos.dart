import 'package:curso_flutter/domain/login/repo_login.dart';
import 'package:curso_flutter/infra/dependencia.dart';

Future iniciarRepositorio() async {
  void registrarDependenciasInMemory() {
    Dependencia.adicionarOuSubstituir<IloginRepo>(LoginInMemory());
  }

  void registrarDependenciasApi() {
    Dependencia.adicionarOuSubstituir<IloginRepo>(LoginRepoAPI());
  }
  
  bool inModoMemory = true;

  if (inModoMemory) {
    registrarDependenciasInMemory();
  } else {
    registrarDependenciasApi();
  }

}
