import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_template/app/routes/app_pages.dart';
import 'package:getx_template/app/widgets/network_image_widget.dart';
import 'package:iconsax/iconsax.dart';

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
          Row(
            children: [
              Obx(
                () => IconButton(
                  icon:
                      !controller.isDarkMode.value
                          ? const Icon(Iconsax.moon)
                          : const Icon(Iconsax.sun),
                  onPressed: () {
                    controller.toggleTheme();
                  },
                ),
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Get.toNamed(Routes.SETTINGS);
                },
              ),
            ],
          ),
        ],
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Obx(
          () => ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    ONetworkImageWidget(
                      imageUrl: controller.products[index].imageUrl,
                    ),
                    const SizedBox(height: 8),
                    const Divider(),
                    ListTile(
                      title: Text(controller.products[index].name),
                      subtitle: Text(controller.products[index].description),
                      trailing: Text('\$${controller.products[index].price}'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
