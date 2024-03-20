import 'package:get_storage/get_storage.dart';

class Preferences {
  static void salvar(PrefConfig config, var valor) {
    final box = GetStorage();

    box.write(config.name, valor);
  }

  static dynamic obter(PrefConfig config, var padrao) {
    final box = GetStorage();

    return box.read(config.name) ?? padrao;
  }
}

enum PrefConfig {
  themeMode;
}
