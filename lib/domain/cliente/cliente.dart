import 'dart:convert';

import 'package:curso_flutter/infra/extensions.dart';

class Cliente {
  String nomeRazao;
  String nomeFantasia;
  String cpfCnpj;
  bool ativo;

  Cliente.fromJsonObject(Map<String, dynamic> jsonObject)
      : nomeRazao = jsonObject.asString('nomeRazao'),
        nomeFantasia = jsonObject.asString('nomeFantasia'),
        ativo = jsonObject.asBool('ativo'),
        cpfCnpj = jsonObject.asString('cpfCnpj');

  static List<Cliente> fromJson(String jsonStr) {
    List<Cliente> lista = [];

    var jsonArray = jsonDecode(jsonStr);

    for (Map<String, dynamic> jsonObject in jsonArray) {
      lista.add(Cliente.fromJsonObject(jsonObject));
    }

    return lista;
  }
}
