import 'package:curso_flutter/domain/cliente/repo_cliente.dart';
import 'package:curso_flutter/domain/login/repo_login.dart';
import 'package:curso_flutter/infra/dependencia.dart';

enum TipoRepositorio {
  inMemory,
  API;
}

Future iniciarServicos() async {
  TipoRepositorio tipoRepositorio = TipoRepositorio.inMemory;

  switch (tipoRepositorio) {
    case TipoRepositorio.inMemory:
      registrarDependeciasInMemory();
      break;
    case TipoRepositorio.API:
      registrarDependeciasApi();
      break;
  }
}

void registrarDependeciasApi() {
  Dependencia.adicionarOuSubstituir<IloginRepo>(LoginRepoAPI());
  Dependencia.adicionarOuSubstituir<IClienteRepo>(ClienteRepoAPI());
}

void registrarDependeciasInMemory() {
  Dependencia.adicionarOuSubstituir<IloginRepo>(LoginRepoInMemory());
  Dependencia.adicionarOuSubstituir<IClienteRepo>(ClienteRepoInMemory());
}
