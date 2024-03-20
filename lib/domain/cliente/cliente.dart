import 'dart:convert';

class Cliente {
  String nomeRazao;
  String nomeFantasia;
  String cpfCnpj;

  Cliente.fromJsonObject(Map<String, dynamic> jsonObject)
      : nomeRazao = jsonObject['nomeRazao'],
        nomeFantasia = jsonObject['nomeFantasia'],
        cpfCnpj = jsonObject['cpfCnpj'];

  static List<Cliente> fromJson(String jsonStr) {
    List<Cliente> lista = [];

    var jsonArray = jsonDecode(jsonStr);

    for (Map<String, dynamic> jsonObject in jsonArray) {
      lista.add(Cliente.fromJsonObject(jsonObject));
    }

    return lista;
  }
}
