import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getcli_demo/components/custom_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/counter_controller.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
     final CounterController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Counter',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              ()=> Text(
                'Count: ${controller.count}',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: customButtonStyle,
            onPressed: ()=> Get.toNamed(Routes.PROFILE), child: Text('Go to profile')),
           SizedBox(
            height: 20,
          ),
          ElevatedButton(
             style: customButtonStyle,
            onPressed: ()=> Get.toNamed('/user'), child: Text('Go to user list')),
           SizedBox(
            height: 20,
          ),
          ElevatedButton(
             style: customButtonStyle,
            onPressed: ()=> Get.toNamed('/post-user'), child: Text('Go to post user list')),
            SizedBox(
            height: 20,
          ),
          ElevatedButton(
             style: customButtonStyle,
            onPressed: ()=> Get.toNamed('/country'), child: Text('Go to Country page'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        onPressed: controller.increment,
      child: Icon(Icons.add),)
    );
  }
}
