import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        centerTitle: true,
      ),
      body: Obx((){
        if(controller.isLoading.value){
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(itemCount: controller.users.length,
         itemBuilder: (context, index){

          final user = controller.users[index];
          final name = '${user['name']['first']} ${user['name']['last']}';
          final email = user['email'];
          final phone = user['phone'];
          final picture = user['picture']['large'];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(picture),
            ),
            title: Text(name),
             subtitle: Text('$email\n$phone'),

          );

         });
      })
    );
  }
}
