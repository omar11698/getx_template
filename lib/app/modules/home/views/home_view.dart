import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_template/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Get.toNamed(Routes.SETTINGS);
            },
          ),
        ],
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Obx(
          () =>
              controller.errorMessage.isEmpty
                  ? controller.isFetchingProducts.value
                      ? CircularProgressIndicator()
                      : ListView.builder(
                        itemCount: controller.products.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Image.network(
                                  controller.products[index].imageUrl,
                                  fit: BoxFit.fitHeight,
                                  height: 200,
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 8),
                                const Divider(),
                                ListTile(
                                  title: Text(controller.products[index].name),
                                  subtitle: Text(
                                    controller.products[index].description,
                                  ),
                                  trailing: Text(
                                    '\$${controller.products[index].price}',
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                  : Center(
                    child: Text(
                      controller.errorMessage.value,
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ),
        ),
      ),
    );
  }
}
