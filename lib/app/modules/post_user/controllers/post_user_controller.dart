
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getcli_demo/app/modules/post_user/models/post_user_model.dart';

class PostUserController extends GetxController {

  var posts = <PostUserModel>[].obs;
  var isLoading = true.obs;

  final Dio dio = Dio();
 
  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() async{
    try {
      isLoading(true);
      final response = await dio.get('https://jsonplaceholder.typicode.com/posts');

      if(response.statusCode == 200){
        final data = response.data as List;
        posts.value = data.map((json)=> PostUserModel.fromJson(json)).toList();

      }
      else{
        throw Exception('failed to load data');
      }

      
    } catch (e) {
      print('Error: $e');
      
    }
    finally{
      isLoading(false);
    }

  }

  

 
}
