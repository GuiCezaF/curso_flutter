import 'package:curso_flutter/domain/cliente/cliente.dart';
import 'package:curso_flutter/domain/cliente/repo_cliente.dart';

class UcListaClientes {
  final IClienteRepo _repo;
  final String _filtrarPesquisa;

  UcListaClientes(this._repo, this._filtrarPesquisa);

  Future<List<Cliente>> executar() async {
    return await _repo.listar(_filtrarPesquisa);
  }
}
