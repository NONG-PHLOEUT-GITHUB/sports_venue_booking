// import 'package:dio/dio.dart';

// class ApiService {
//   static final ApiService _instance = ApiService._internal();
//   late Dio dio;

//   factory ApiService() {
//     return _instance;
//   }

//   ApiService._internal() {
//     // Base options for all requests
//     BaseOptions options = BaseOptions(
//       baseUrl: "http://your-laravel-api-url/api",
//       connectTimeout: const Duration(seconds: 10),
//       receiveTimeout: const Duration(seconds: 10),
//       headers: {
//         "Content-Type": "application/json",
//       },
//     );

//     dio = Dio(options);

//     // Add interceptors for request and response
//     dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           // Example: Add an Authorization token to every request
//           options.headers['Authorization'] = "Bearer your_token";
//           print("Request: ${options.method} ${options.path}");
//           return handler.next(options); // Proceed with the request
//         },
//         onResponse: (response, handler) {
//           // Log or modify the response if needed
//           print("Response: ${response.statusCode} ${response.data}");
//           return handler.next(response); // Proceed with the response
//         },
//         onError: (DioError e, handler) {
//           // Handle errors globally
//           print("Error: ${e.response?.statusCode} ${e.message}");
//           return handler.next(e); // Proceed with the error
//         },
//       ),
//     );
//   }

//   // Example API method
//   Future<List<dynamic>> fetchUsers() async {
//     try {
//       Response response = await dio.get('/users');
//       return response.data;
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
