import 'package:cpb/src/auth/auth_controller.dart';
import 'package:cpb/src/auth/auth_service.dart';
import 'package:cpb/src/network_manager.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager(), permanent: true);
    Get.put(AuthService(), permanent: true);
    Get.put(AuthController(), permanent: true);
  }
}
