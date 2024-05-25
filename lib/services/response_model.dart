class ResponseModel {
  final bool isSuccessful;
  final String message;

  ResponseModel({
    required this.isSuccessful,
    required this.message,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      isSuccessful: json['success'],
      message: json['message'],
    );
  }

}
