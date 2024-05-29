class ResponseModel {
  final bool isSuccessful;
  final String message;
  final dynamic data;

  ResponseModel({
    required this.isSuccessful,
    required this.message,
    this.data
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      isSuccessful: json['success'],
      message: json['message'],
      data: json['data']
    );
  }

}
