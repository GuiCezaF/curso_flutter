import 'package:curso_flutter/domain/login/repo_login.dart';

class UcAutenticarLogin {
  final IloginRepo _repo;
  final String _email;
  final String _senha;

  UcAutenticarLogin(this._repo, this._email, this._senha);

  Future<bool> executar() async {
    return await _repo.autenticar(_email, _senha);
  }
}
