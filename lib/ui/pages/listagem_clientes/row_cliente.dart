import 'package:curso_flutter/domain/cliente/cliente.dart';
import 'package:curso_flutter/domain/cliente/repo_cliente.dart';
import 'package:curso_flutter/domain/cliente/uc_obter_qtde_pedidos.dart';
import 'package:curso_flutter/infra/dependencia.dart';
import 'package:curso_flutter/infra/extensions.dart';
import 'package:flutter/material.dart';

class RowCliente extends StatelessWidget {
  final Cliente cliente;

  const RowCliente({
    Key? key,
    required this.cliente,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2, left: 10, right: 10),
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                cliente.nomeRazao,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              10.toSizedBoxH(),
              Text(cliente.nomeFantasia),
              6.toSizedBoxH(),
              Text(cliente.cpfCnpj),
              FutureBuilder(
                future: obterQtdePedidos(),
                builder: (ctxFB, snapshot) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Text('Carregando..');
                  } else {
                    return Text(
                        'Este cliente tem ${(snapshot.data as double).toString()} '
                        'pedidos emitidos.');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future obterQtdePedidos() async {
    return UcObterQtdePedidos(Dependencia.obter<IClienteRepo>()).executar();
  }
}
