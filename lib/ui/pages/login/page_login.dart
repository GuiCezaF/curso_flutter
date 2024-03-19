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
                child: FlutterLogo(
                  size: 200,
                ),
              ),
              const Text(
                'E-mail',
                style: TextStyle(color: Colors.black),
              ),
              CampoTexto(controller: controller.edtEmail),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Senha',
                style: TextStyle(color: Colors.black),
              ),
              CampoTexto(controller: controller.edtSenha),
              const SizedBox(
                height: 40,
              ),
              Botao(
                  titulo: "Autenticar",
                  onClick: () async {
                    await controller.onClickAutenticar();
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
