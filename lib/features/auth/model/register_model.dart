class RegisterModel {
  bool? status;
  String? message;
  String? otpExpiresIn;

  RegisterModel({this.status, this.message, this.otpExpiresIn});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    otpExpiresIn = json['otp_expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    data['otp_expires_in'] = otpExpiresIn;
    return data;
  }
}
