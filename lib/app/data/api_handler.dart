class ApiHandler {
  ApiHandler._();
  static final ApiHandler _instance = ApiHandler._();
  static ApiHandler get instance => _instance;
   
  // This method is used to handle API requests
  Future<void> handleRequest(String url) async {
    try {
      // Simulate an API request
      await Future.delayed(Duration(seconds: 2));
      print("API request to $url was successful");
    } catch (e) {
      print("Error occurred: $e");
    }
  }
  // This method is used to handle API responses
  void handleResponse(String response) {
    // Process the API response
    print("API response: $response");
  }
  // This method is used to handle API errors
  void handleError(String error) {
    // Process the API error
    print("API error: $error");
  }



}