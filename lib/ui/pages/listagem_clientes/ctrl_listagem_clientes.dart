import 'package:curso_flutter/domain/cliente/cliente.dart';
import 'package:curso_flutter/domain/cliente/repo_cliente.dart';
import 'package:curso_flutter/domain/cliente/uc_lista_clientes.dart';
import 'package:curso_flutter/infra/dependencia.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListagemClientesController {
  TextEditingController edtPesquisa = TextEditingController();

  List<Cliente> listaClientes = [];

  var estaPesquisando = true.obs;

  inicializar() {
    edtPesquisa.addListener(() {
      pesquisarClientes();
    });

    pesquisarClientes();
  }

  Future pesquisarClientes() async {
    estaPesquisando.value = true;

    listaClientes = await UcListaClientes(
            Dependencia.obter<IClienteRepo>(), edtPesquisa.text)
        .executar();

    estaPesquisando.value = false;
  }
}
