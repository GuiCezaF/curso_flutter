import 'package:curso_flutter/ui/pages/login/ctrl_login.dart';
import 'package:curso_flutter/ui/pages/login/exts_ctrl_on_click.dart';
import 'package:curso_flutter/ui/pages/widgets/botao.dart';
import 'package:curso_flutter/ui/pages/widgets/campo_texto.dart';
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
      body: Container(
        child: Column(
          children: [
            const FlutterLogo(),
            CampoTexto(controller: controller.edtEmail),
            CampoTexto(controller: controller.edtSenha),
            Botao(
                titulo: "Autenticar",
                onClick: () async {
                  await controller.onClickAutenticar();
                })
          ],
        ),
      ),
    );
  }
}
