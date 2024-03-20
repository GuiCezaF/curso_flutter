import 'package:curso_flutter/ui/pages/listagem_clientes/ctrl_listagem_clientes.dart';
import 'package:curso_flutter/ui/pages/listagem_clientes/row_cliente.dart';
import 'package:curso_flutter/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListagemClientesPage extends StatefulWidget {
  const ListagemClientesPage({Key? key}) : super(key: key);

  @override
  State<ListagemClientesPage> createState() => _ListagemClientesPageState();
}

class _ListagemClientesPageState extends State<ListagemClientesPage> {
  late ListagemClientesController controller;

  @override
  void initState() {
    controller = ListagemClientesController();
    controller.inicializar();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Clientes'),
        actions: [
          Obx(
            () => Switch(
              value: controller.isDarkMode.value,
              activeColor: Colors.green,
              activeTrackColor: Colors.green.withOpacity(0.5),
              inactiveThumbColor: Colors.grey.withOpacity(0.5),
              inactiveTrackColor: Colors.grey.withOpacity(0.5),
              onChanged: (value) {
                controller.onAlterarTheme(value);
              },
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 60),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
            child: CampoTexto(
              controller: controller.edtPesquisa,
              hint: 'Pesquisar por nome',
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Obx(() => controller.estaPesquisando.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: controller.listaClientes
                    .map((cliente) => RowCliente(cliente: cliente))
                    .toList(),
              )),
      ),
    );
  }
}
