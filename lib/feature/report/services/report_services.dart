import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/resources/constant_messages.dart';
import 'package:patient_portal/resources/error_model.dart';

class ReportServices {
  static Future<Either<ErrorModel, Uint8List>> downloadReport(
      {required String url}) async {
    try {
      final Uint8List list = await http.readBytes(Uri.parse(url));

      return Right(list);
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(ErrorModel(message: ConstantMessages.tokenExpiredMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
//   Future<String> downloadDocument(String documentUrl, String fileName, String documentFormat) async {
//    try {
//      var response = await http.get(Uri.parse(documentUrl));
//      Directory generalDownloadDir = await Directory('/storage/emulated/0/Download');
//      if (!Directory(generalDownloadDir.path).existsSync()) {
//        Directory(generalDownloadDir.path).createSync(recursive: true);
//      }
//      File file =  File("${generalDownloadDir.path}/$fileName${documentFormat}");
//      file.writeAsBytesSync(response.bodyBytes, flush: true);
//      showLongToast("Successfully downloaded..");
//      setState(() {
//        isDownloading = false;
//      });
//      return file.path;
//    } catch (e, s) {
//      print("LoadPDF Error--> Error:-$e stackTrace:-$s");
//      setState(() {
//        isDownloading = false;
//      });
//      return "null";
//    }
//  }
}
