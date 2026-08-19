class ConstantUrls {
  static const String baseUrl = 'http://192.168.1.2:8089';
  static const String serviceUrl = '$baseUrl/api/Apm/service';
  static const String specialityImageUrl = '$baseUrl/uploads/department';
  static const String doctorImageUrl = '$baseUrl/uploads/employee';
  static const String memberImageUrl = '$baseUrl/uploads/patient';
  static const String bannerImageUrl = '$baseUrl/uploads/banner';
  static const String packageImageUrl = '$baseUrl/Uploads/promo/pkg';
  static const String otpGenerationUrl = '$baseUrl/api/user/ppauth';
  static const String otpVerificationUrl = '$baseUrl/api/user/ppauthotp';
  static const String loginWithPasswordUrl = '$baseUrl/api/user/auth';
  static const String uploadDocumentUrl = '$baseUrl/api/file/upload';
  static const String addMember = '$baseUrl/api/Apm/UploadDocument';
  static const String insuranceImagePath = '$baseUrl/uploads/Insurance';
  static const String refreshUrl = '$baseUrl/api/user/pp-refreshtoken';

  static const String termsAndConditionUrl =
      'https://www.alleviamedicalcenter.com/home/user_policy';
}
