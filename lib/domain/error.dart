class ApiResponse {
  bool? success;
  String? message;
  List<String>? data;

 ApiResponse({this.success,this.message,this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      success: json['success'] ??false as bool,
      message: json['message']??"" as String,
      data: List<String>.from(json['errors'])??[], // List<String>
    );
  }

  // تحويل Dart Object → JSON
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'errors': data,
    };
  }
}
