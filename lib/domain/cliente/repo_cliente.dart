import 'dart:convert';

import 'package:curso_flutter/domain/cliente/cliente.dart';
import 'package:curso_flutter/infra/request_helper.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

abstract class IClienteRepo {
  Future<List<Cliente>> listar(String filtroPesquisa);
}

class ClienteRepoAPI implements IClienteRepo {
  @override
  Future<List<Cliente>> listar(String filtroPesquisa) async {
    var params = {"filtroPesquisa": filtroPesquisa};

    var response =
        await requestGET('/ws/curso-flutter/autenticar', params: params);

    return Cliente.fromJson(response.body);
  }
}

class ClienteRepoInMemory implements IClienteRepo {
  @override
  Future<List<Cliente>> listar(String filtroPesquisa) async {
    String strClientes =
        await rootBundle.loadString('assets/in_memory/cliente.json');

    var lista = Cliente.fromJson(strClientes);

    return lista
        .where((element) =>
            element.nomeRazao.isCaseInsensitiveContains(filtroPesquisa) ||
            element.nomeFantasia.isCaseInsensitiveContains(filtroPesquisa))
        .toList();
  }
}
