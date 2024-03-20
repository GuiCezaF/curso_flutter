import 'package:curso_flutter/infra/preferences.dart';
import 'package:curso_flutter/infra/servicos.dart';
import 'package:curso_flutter/infra/theme.dart';
import 'package:curso_flutter/ui/pages/login/page_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await iniciarServicos();

  runApp(
    GetMaterialApp(
      title: 'Curso de Flutter',
      theme: ThemeLight().obter(),
      darkTheme: ThemeDark().obter(),
      themeMode: Preferences.obter(PrefConfig.themeMode, false)
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const LoginPage(),
    ),
  );
}
