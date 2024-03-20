import 'dart:convert';

import 'package:curso_flutter/infra/request_helper.dart';
import 'package:flutter/services.dart';

abstract class ILoginRepo {
  /// Retorno será TRUE caso o email e senha digitados são válidos
  Future<bool> autenticar(String email, String senha);
}

class LoginRepoAPI implements ILoginRepo {
  @override
  Future<bool> autenticar(String email, String senha) async {
    /// Monta o JSON com os parâmetros para enviar para a API
    var params = {"email": email, "senha": senha};

    var response =
        await requestGET('/ws/curso-flutter/autenticar', params: params);

    var jsonAutenticar = jsonDecode(response.body);

    return jsonAutenticar['autorizado'];
  }
}

class LoginRepoInMemory implements ILoginRepo {
  @override
  Future<bool> autenticar(String email, String senha) async {
    String strAutenticar =
        await rootBundle.loadString('assets/in_memory/autenticar.json');

    Map<String, dynamic> jsonAutenticar = jsonDecode(strAutenticar);

    return jsonAutenticar['autorizado'];
  }
}
