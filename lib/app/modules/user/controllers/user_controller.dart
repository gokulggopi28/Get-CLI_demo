import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserController extends GetxController {

  var users = <Map<String, dynamic>>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async{
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('https://randomuser.me/api/?results=10'));
      if(response.statusCode == 200){
        final data = jsonDecode(response.body);
        users.value = List<Map<String, dynamic>>.from(data['results']);

      }
      else{
        throw Exception('failed to load users');
      }

      
    } catch (e) {
      print('Error: $e');

      
    } finally{
      isLoading (false);
    }

  }

 

}
