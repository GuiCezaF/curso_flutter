import 'package:curso_flutter/domain/cliente/repo_cliente.dart';

class UcObterQtdePedidos {
  final IClienteRepo _repo;

  UcObterQtdePedidos(this._repo);

  Future<double> executar() async {
    await Future.delayed(const Duration(seconds: 2));

    return await _repo.obterQtdePedidos();
  }
}
