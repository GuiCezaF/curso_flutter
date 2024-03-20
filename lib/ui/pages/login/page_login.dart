import 'package:curso_flutter/infra/extensions.dart';
import 'package:curso_flutter/ui/pages/login/ctrl_login.dart';
import 'package:curso_flutter/ui/pages/login/exts_ctrl_on_click.dart';
import 'package:curso_flutter/ui/widgets/botao.dart';
import 'package:curso_flutter/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController();
    controller.inicializar();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: FlutterLogo(size: 200),
                ),
                CampoTexto(
                  controller: controller.edtEmail,
                  titulo: 'E-mail',
                  hint: 'Digite seu e-mail',
                ),
                20.toSizedBoxH(),
                CampoTexto(
                  controller: controller.edtSenha,
                  hint: 'Digite sua senha',
                  titulo: 'Senha',
                ),
                80.toSizedBoxH(),
                Botao(
                  titulo: 'Autenticar',
                  onClick: () async {
                    await controller.onClickAutenticar(context);
                  },
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
