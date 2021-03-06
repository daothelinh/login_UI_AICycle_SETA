import 'package:get/get.dart';
import 'package:login_ui_aicycle_seta/controller/change_password_controller.dart';
import 'package:login_ui_aicycle_seta/controller/login_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(
        // changePassword: Get.find(),
        doLogin: Get.find(),
        //getDamageTypes: Get.find(),
      ),
    );
    Get.lazyPut(() => ChangePasswordController(changePassword: Get.find()));
  }
}
