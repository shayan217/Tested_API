import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class LoginController extends GetxController {
  var headerData = {}.obs;

  void fetchHeaderFromAPI() async {
    try {
      var response = await http.head(Uri.parse("https://falcon.onelogitech.com/api/riderapp_login"));
      
      if (response.statusCode == 200) {
        headerData.value = response.headers;
      } else {
        print("Failed to fetch header data from API");
      }
    } catch (e) {
      print("Exception occurred: $e");
    }
  }

  // Example function to handle login logic
  void handleLogin() {
    // Your login logic goes here
  }

  // Example function to handle logout logic
  void handleLogout() {
    // Your logout logic goes here
  }
}

void main() {
  LoginController loginController = Get.put(LoginController());

  // Fetch header data from API
  loginController.fetchHeaderFromAPI();

  // Example usage: printing fetched header data
  ever(loginController.headerData, (_) {
    print("Header Data: ${loginController.headerData.value}");
  });
}
