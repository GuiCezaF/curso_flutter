import 'package:get/get.dart';


class Dependencia {
  static S salvarPermanente<S>(S dependency) {
    return Get.put<S>(dependency, permanent: true);
  }

  static adicionarOuSubstituir<S>(S dependency) {
    if (Get.isRegistered<S>()) {
      Get.replace<S>(dependency);
    } else {
      salvarPermanente<S>(dependency);
    }
  }

  static S obter<S>({String? tag}) => Get.find<S>();

  static bool estaRegistrado<S>() => Get.isRegistered<S>();

  static Future<bool> deletar<S>({String? tag, bool force = false}) async =>
      Get.delete<S>(tag: tag, force: force);
}
