import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/post_peminjaman_controller.dart';

class PostPeminjamanView extends GetView<PostPeminjamanController> {
  const PostPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PostPeminjamanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PostPeminjamanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
