import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RegisterView'),
          centerTitle: true,
        ),
        body: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.namaController,
                decoration: InputDecoration(hintText: "Masukkan Nama"),
                validator: (value) {
                  //validasi, akan muncul pesan dibawah jika nama kosong
                  if (value!.isEmpty) {
                    return "Nama tidak boleh kosong";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.usernameController,
                decoration: InputDecoration(hintText: "Masukkan Username"),
                validator: (value) {
                  //validasi, akan muncul pesan dibawah jika username kosong
                  if (value!.isEmpty) {
                    return "Username tidak boleh kosong";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.telpController,
                decoration: InputDecoration(hintText: "Masukkan No Telp"),
                validator: (value) {
                  //validasi, akan muncul pesan dibawah jika No Telp kosong
                  if (value!.isEmpty) {
                    return "No Telp tidak boleh kosong";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.alamatController,
                decoration: InputDecoration(hintText: "Masukkan Alamat"),
                validator: (value) {
                  //validasi, akan muncul pesan dibawah jika alamat kosong
                  if (value!.isEmpty) {
                    return "Alamat tidak boleh kosong";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.passwordController,
                decoration: InputDecoration(hintText: "Masukkan Password"),
                validator: (value) {
                  //validasi, akan muncul pesan dibawah jika password kosong
                  if (value!.isEmpty) {
                    return "Password tidak boleh kosong";
                  }
                  return null;
                },
              ),
              Obx(() => controller.loadingRegister.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      //ketika ada perubahan value maka akan otomatis merubah value
                      onPressed: () {
                        controller.addRegister();
                      },
                      child: Text("Register")))
            ],
          ),
        ));
  }
}
