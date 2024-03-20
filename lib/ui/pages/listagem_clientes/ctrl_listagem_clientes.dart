import 'package:curso_flutter/domain/cliente/cliente.dart';
import 'package:curso_flutter/domain/cliente/repo_cliente.dart';
import 'package:curso_flutter/domain/cliente/uc_listar_clientes.dart';
import 'package:curso_flutter/infra/dependencia.dart';
import 'package:curso_flutter/infra/preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListagemClientesController {
  TextEditingController edtPesquisa = TextEditingController();

  List<Cliente> listaClientes = [];

  var isDarkMode = false.obs;
  var estaPesquisando = true.obs;

  void inicializar() async {
    isDarkMode.value = Preferences.obter(PrefConfig.themeMode, false);

    edtPesquisa.addListener(() {
      pesquisarClientes();
    });

    pesquisarClientes();
  }

  Future pesquisarClientes() async {
    estaPesquisando.value = true;

    listaClientes = await UcListarClientes(
            Dependencia.obter<IClienteRepo>(), edtPesquisa.text)
        .executar();

    estaPesquisando.value = false;
  }

  void onAlterarTheme(bool value) async {
    isDarkMode.value = value;

    ThemeMode mode = isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

    Get.changeThemeMode(mode);

    Preferences.salvar(PrefConfig.themeMode, isDarkMode.value);
  }
}
