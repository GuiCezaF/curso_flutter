import 'package:curso_flutter/domain/cliente/cliente.dart';

abstract class IClienteRepo {
  Future<List<Cliente>> listar(String filtroPesquisa);
}

class ClienteRepoAPI implements IClienteRepo {
  @override
  Future<List<Cliente>> listar(String filtroPesquisa) {
    // TODO: implement listar
    throw UnimplementedError();
  }
}

class ClienteRepoInMemory implements IClienteRepo {
  @override
  Future<List<Cliente>> listar(String filtroPesquisa) {
    // TODO: implement listar
    throw UnimplementedError();
  }
}
