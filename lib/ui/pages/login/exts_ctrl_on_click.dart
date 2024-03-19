import 'package:curso_flutter/domain/login/repo_login.dart';
import 'package:curso_flutter/domain/login/uc_autenticar_login.dart';
import 'package:curso_flutter/infra/dependencia.dart';
import 'package:curso_flutter/ui/pages/login/ctrl_login.dart';

extension OnClick on LoginController {
  Future onClickAutenticar() async {
    try {
      if (edtEmail.text.isEmpty) {
        throw 'O campo E-mail precisa ser preenchido';
      }
      if (edtSenha.text.isEmpty) {
        throw 'O campo Senha precisa ser preenchido';
      }

      bool isAutorizado = await UcAutenticarLogin(
              Dependencia.obter<IloginRepo>(), edtEmail.text, edtSenha.text)
          .executar();

      if (isAutorizado) {
        //TODO abrir tela de listagem de clientes
      } else {
        throw 'Esse email não esta autorizado';
      }
    } catch (e) {
      print(e);
    }
  }

  Future onClickRecuperaEmail() async {}
}
