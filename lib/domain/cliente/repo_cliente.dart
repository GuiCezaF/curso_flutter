import 'dart:convert';

import 'package:curso_flutter/domain/cliente/cliente.dart';
import 'package:curso_flutter/infra/extensions.dart';
import 'package:curso_flutter/infra/request_helper.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

abstract class IClienteRepo {
  Future<List<Cliente>> listar(String filtroPesquisa);

  Future<double> obterQtdePedidos();
}

class ClienteRepoAPI implements IClienteRepo {
  @override
  Future<List<Cliente>> listar(String filtroPesquisa) async {
    var params = {"filtroPesquisa": filtroPesquisa};

    var response =
        await requestGET('/ws/curso-flutter/clientes', params: params);

    return Cliente.fromJson(response.body);
  }

  @override
  Future<double> obterQtdePedidos() async {
    var params = {"codigo": "1"};

    var response =
        await requestGET('/ws/curso-flutter/qtde-pedidos', params: params);

    return response.body;
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

  @override
  Future<double> obterQtdePedidos() async {
    String strQtde =
        await rootBundle.loadString('assets/in_memory/qtde_pedidos.json');

    Map<String, dynamic> jsonQtde = jsonDecode(strQtde);

    return jsonQtde.asDouble('quantidade');
  }
}
