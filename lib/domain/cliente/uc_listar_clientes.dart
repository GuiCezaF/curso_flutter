import 'package:curso_flutter/domain/cliente/cliente.dart';
import 'package:curso_flutter/domain/cliente/repo_cliente.dart';

class UcListarClientes {
  final IClienteRepo _repo;
  final String _filtroPesquisa;

  UcListarClientes(this._repo, this._filtroPesquisa);

  Future<List<Cliente>> executar() async {
    return await _repo.listar(_filtroPesquisa);
  }
}
