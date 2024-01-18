import 'package:get/get.dart';

import '../controllers/post_peminjaman_controller.dart';

class PostPeminjamanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostPeminjamanController>(
      () => PostPeminjamanController(),
    );
  }
}
