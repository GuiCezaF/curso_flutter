import 'package:curso_flutter/domain/login/repo_login.dart';

class UcAutenticarLogin {
  final ILoginRepo _repo;
  final String _email;
  final String _senha;

  UcAutenticarLogin(this._repo, this._email, this._senha);

  Future<bool> executar() async {
    try {
      return await _repo.autenticar(_email, _senha);
    } catch (e) {
      throw _EFalhaAutenticarLogin(e.toString());
    }
  }
}

class _EFalhaAutenticarLogin implements Exception {
  final String _motivo;

  _EFalhaAutenticarLogin(this._motivo);

  @override
  String toString() {
    return 'Aconteceu um erro inesperado ao autenticar. O motivo foi: $_motivo';
  }
}
