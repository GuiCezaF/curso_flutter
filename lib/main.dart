import 'package:curso_flutter/infra/servicos.dart';
import 'package:curso_flutter/infra/theme.dart';
import 'package:curso_flutter/ui/pages/login/page_login.dart';
import 'package:flutter/material.dart';

void main() async {
  await iniciarServicos();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeLight().obter(),
      darkTheme: ThemeDark().obter(),
      themeMode: ThemeMode.light,
      home: const LoginPage(),
    );
  }
}
