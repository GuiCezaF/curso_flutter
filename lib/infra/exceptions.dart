class EErro404 implements Exception {
  final String _pathAPI;

  EErro404(this._pathAPI);

  @override
  String toString() {
    return 'A API $_pathAPI não foi encontrada.';
  }
}
