import "dart:convert";

import "package:curso_flutter/infra/request_helper.dart";
import "package:flutter/services.dart";

abstract class IloginRepo {

/// Retorno Sera TRUE caso email e senha  digitados forem validos

  Future<bool> autenticar(String email, String senha);
}

class LoginRepoAPI implements IloginRepo {
  @override
  Future<bool> autenticar(String email, String senha) async {

    /// Monta o JSON com os parâmetros para enviar para a API
    var params = {"email": email, "senha": senha};

    var response = await requestGET('/ws/curso_flutter/autenticar', params: params);

    var jsonAutenticar = jsonDecode(response.body);

    return jsonAutenticar['autorizado'];
  }
}

class LoginInMemory implements IloginRepo {
  @override
  Future<bool> autenticar(String email, String senha) async{

    String strAutenticar = await rootBundle.loadString('assets/in_memory/autenticar.json');

    var jsonAutenticar = jsonDecode(strAutenticar);

    return jsonAutenticar['autorizado'];
  }

}