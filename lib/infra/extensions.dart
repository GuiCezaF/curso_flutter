import 'package:flutter/material.dart';

extension ExtensaoNoInt on int {
  SizedBox toSizedBoxH() => SizedBox(height: toDouble());
  SizedBox toSizedBoxW() => SizedBox(width: toDouble());
}

extension ExtensaoNoMap on Map<String, dynamic> {
  bool? asBoolNull(String chave) {
    if (containsKey(chave)) {
      if (this[chave] == null) {
        return null;
      }

      if (this[chave] == 1) {
        return true;
      }

      if (this[chave] == '1') {
        return true;
      }

      if (this[chave] == 'true') {
        return true;
      }

      if (this[chave] == 'sim') {
        return true;
      }

      if (this[chave] == true) {
        return true;
      }

      return false;
    }

    throw 'A tag $chave não existe no JSON $toString().';
  }

  bool asBool(String chave) {
    return asBoolNull(chave) ?? false;
  }

  String? asStringNull(String chave) {
    if (containsKey(chave)) {
      if (this[chave] == null) {
        return null;
      }

      return this[chave].toString();
    }

    throw 'A tag $chave não existe no JSON $toString().';
  }

  String asString(String chave) {
    return asStringNull(chave) ?? '';
  }

  double? asDoubleNull(String chave) {
    if (containsKey(chave)) {
      if (this[chave] == null) {
        return null;
      }

      return this[chave] as double;
    }

    throw 'A tag $chave não existe no JSON $toString().';
  }

  double asDouble(String chave) {
    return asDoubleNull(chave) ?? 0.0;
  }
}
