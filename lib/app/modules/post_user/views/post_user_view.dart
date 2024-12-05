
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/post_user_controller.dart';

class PostUserView extends GetView<PostUserController> {
  const PostUserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post User Data'),
        centerTitle: true,
      ),
       body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator(
            color: Colors.deepPurple,
            strokeCap: StrokeCap.square,
            backgroundColor: Colors.purple,
          ));
        }
        return ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.body),
            );
          },
        );
      }),
    );
  }
}
