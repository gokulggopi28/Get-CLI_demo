import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/country_controller.dart';

class CountryView extends GetView<CountryController> {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: controller.country.length,
          itemBuilder: (context, index) {
            final country = controller.country[index];
            
            return Card(
              child: ListTile(
                leading: Text(country['flag'] ?? '', style: const TextStyle(fontSize: 24)),
                title: Text(country['name']['common'] ?? ''),
                subtitle: Text('Capital: ${country['capital']}\nRegion: ${country['region']}'),
              ),
            );
          },
        );
      }),
    );
  }
}
