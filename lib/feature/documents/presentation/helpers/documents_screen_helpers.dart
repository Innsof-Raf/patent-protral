import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/constant_messages.dart';
import 'package:patient_portal/resources/error_model.dart';
import 'package:patient_portal/resources/urls.dart';

class DocumentsScreenHelpers {
  static List<PopupMenuItem<int>> createPopupMenuItem(List<Member> members) {
    List<PopupMenuItem<int>> popupMenuItems = [
      const PopupMenuItem(
        value: 0,
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'All',
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bodyLargeRobotoSemiBold,
        ),
      ),
    ];
    for (Member member in members) {
      popupMenuItems.add(
        PopupMenuItem(
          value: member.id,
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            member.name,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bodyLargeRobotoSemiBold,
          ),
        ),
      );
    }
    return popupMenuItems;
  }

  static Future<Either<ErrorModel, String>> uploadDocument({
    required String documentName,
    required String documentpath,
    required DateTime? expireDate,
    required String token,
    required int memberId,
  }) async {
    try {
      var headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(ConstantUrls.uploadDocumentUrl),
      );
      request.fields.addAll({
        'saveRequest':
            '{"content":"{\'seq_no\':0,\'id_customer\':$memberId,\'id_document\':\'\',\'expiry_dt\':\'${expireDate ?? ''}\',\'doc_path\':\'$documentpath\',\'doc_name\':\'$documentName\',\'doc_ext\':\'{Ext}\',\'isself\':true}","type":"PP0025"}',
        'PathIdentifier': 'PatientProfileImage',
        'FolderIdentifier': '$memberId\\selfdoc',
      });
      request.files.add(
        await http.MultipartFile.fromPath('uploads', documentpath),
      );
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = jsonDecode(await response.stream.bytesToString());

        return Right(responseData);
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(
        ErrorModel(message: ConstantMessages.connectionTimeOutFailureMessage),
      );
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }
}
