import 'package:curso_flutter/domain/login/repo_login.dart';
import 'package:curso_flutter/domain/login/uc_autenticar_login.dart';
import 'package:curso_flutter/infra/dependencia.dart';
import 'package:curso_flutter/ui/pages/listagem_clientes/page_listagem_clientes.dart';
import 'package:curso_flutter/ui/pages/login/ctrl_login.dart';
import 'package:curso_flutter/ui/widgets/utils.dart';
import 'package:flutter/material.dart';

extension OnClick on LoginController {
  Future onClickAutenticar(BuildContext context) async {
    try {
      if (edtEmail.text.isEmpty) {
        throw ECampoEmailInvalido();
      }

      if (edtSenha.text.isEmpty) {
        throw ECampoSenhaInvalido();
      }

      bool isAutorizado = await UcAutenticarLogin(
              Dependencia.obter<ILoginRepo>(), edtEmail.text, edtSenha.text)
          .executar();

      if (isAutorizado) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ListagemClientesPage()));
      } else {
        throw 'Este email não está autorizado.';
      }
    } catch (e) {
      showDialogErro(context, e.toString());
    }
  }

  Future onClickRecuperarEmail() async {}
}

class ECampoEmailInvalido implements Exception {
  @override
  String toString() {
    return 'O campo e-mail precisa ser preenchido.';
  }
}

class ECampoSenhaInvalido implements Exception {
  @override
  String toString() {
    return 'O campo senha precisa ser preenchido.';
  }
}
